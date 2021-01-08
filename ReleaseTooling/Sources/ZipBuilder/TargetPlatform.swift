/*
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation

/// The target platform that the framework is built for.
enum TargetPlatform: CaseIterable {
  /// Binaries to target iOS devices.
  case iOSDevice
  /// Binaries to target iOS simulators.
  case iOSSimulator
  /// Binaries to target Catalyst.
  case catalyst
  /// Binaries to target macOS.
  case macOS
  /// Binaries to target tvOS.
  case tvOSDevice
  /// Binaries to target tvOS simulators.
  case tvOSSimulator

  /// Valid architectures to be built for the platform.
  var archs: [Architecture] {
    switch self {
    case .iOSDevice: return [.armv7, .arm64]
    // Include arm64 slices in the simulator for Apple silicon Macs.
    case .iOSSimulator: return [.i386, .x86_64, .arm64]
    // TODO: Evaluate x86_64h slice. Previous builds were limited to x86_64.
    case .catalyst: return [.x86_64, .arm64]
    case .macOS: return [.x86_64, .arm64]
    case .tvOSDevice: return [.arm64]
    case .tvOSSimulator: return [.x86_64, .arm64]
    }
  }

  /// Flag to determine if bitcode should be used for the target platform.
  var shouldEnableBitcode: Bool {
    switch self {
    // TODO: Do we need to include bitcode for Catalyst? We weren't before the latest arm64 changes.
    case .iOSDevice: return true
    case .macOS: return true
    case .tvOSDevice: return true
    default: return false
    }
  }

  /// Name of the SDK as used by `xcodebuild` for the target platforms.
  var sdkName: String {
    switch self {
    case .iOSDevice: return "iphoneos"
    case .iOSSimulator: return "iphonesimulator"
    case .catalyst: return "macosx"
    case .macOS: return "macosx"
    case .tvOSDevice: return "appletvos"
    case .tvOSSimulator: return "appletvsimulator"
    }
  }

  /// The build name. Distinguished from sdkName to disambiguate catalyst and macOS.
  var buildName: String {
    switch self {
    case .catalyst: return "catalyst"
    default: return sdkName
    }
  }

  /// Name of the directory that builds go into, autogenerated from Xcode.
  var buildDirName: String {
    switch self {
    case .iOSDevice: return "Release-iphoneos"
    case .iOSSimulator: return "Release-iphonesimulator"
    case .catalyst: return "Release-maccatalyst"
    case .macOS: return "Release"
    case .tvOSDevice: return "Release-appletvos"
    case .tvOSSimulator: return "Release-appletvsimulator"
    }
  }
}

/// Different architectures to build frameworks for.
enum Architecture: String, CaseIterable {
  case arm64
  case armv7
  case i386
  case x86_64
  case x86_64h // x86_64h, Haswell, used for Mac Catalyst
}
