/*
 * Copyright 2018 Google
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

// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/http.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import "HTTP.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - GAPIHTTPRoot

@implementation GAPIHTTPRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - GAPIHTTPRoot_FileDescriptor

static GPBFileDescriptor *GAPIHTTPRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.api"
                                                 objcPrefix:@"GAPI"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GAPIHttp

@implementation GAPIHttp

@dynamic rulesArray, rulesArray_Count;
@dynamic fullyDecodeReservedExpansion;

typedef struct GAPIHttp__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *rulesArray;
} GAPIHttp__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "rulesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GAPIHttpRule),
        .number = GAPIHttp_FieldNumber_RulesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIHttp__storage_, rulesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "fullyDecodeReservedExpansion",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttp_FieldNumber_FullyDecodeReservedExpansion,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIHttp class]
                                     rootClass:[GAPIHTTPRoot class]
                                          file:GAPIHTTPRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIHttp__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GAPIHttpRule

@implementation GAPIHttpRule

@dynamic patternOneOfCase;
@dynamic selector;
@dynamic get;
@dynamic put;
@dynamic post;
@dynamic delete_p;
@dynamic patch;
@dynamic custom;
@dynamic body;
@dynamic additionalBindingsArray, additionalBindingsArray_Count;

typedef struct GAPIHttpRule__storage_ {
  uint32_t _has_storage_[2];
  NSString *selector;
  NSString *get;
  NSString *put;
  NSString *post;
  NSString *delete_p;
  NSString *patch;
  NSString *body;
  GAPICustomHttpPattern *custom;
  NSMutableArray *additionalBindingsArray;
} GAPIHttpRule__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "selector",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttpRule_FieldNumber_Selector,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GAPIHttpRule__storage_, selector),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "get",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttpRule_FieldNumber_Get,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GAPIHttpRule__storage_, get),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "put",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttpRule_FieldNumber_Put,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GAPIHttpRule__storage_, put),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "post",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttpRule_FieldNumber_Post,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GAPIHttpRule__storage_, post),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "delete_p",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttpRule_FieldNumber_Delete_p,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GAPIHttpRule__storage_, delete_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "patch",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttpRule_FieldNumber_Patch,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GAPIHttpRule__storage_, patch),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "body",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttpRule_FieldNumber_Body,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GAPIHttpRule__storage_, body),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "custom",
        .dataTypeSpecific.className = GPBStringifySymbol(GAPICustomHttpPattern),
        .number = GAPIHttpRule_FieldNumber_Custom,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GAPIHttpRule__storage_, custom),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "additionalBindingsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GAPIHttpRule),
        .number = GAPIHttpRule_FieldNumber_AdditionalBindingsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIHttpRule__storage_, additionalBindingsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIHttpRule class]
                                     rootClass:[GAPIHTTPRoot class]
                                          file:GAPIHTTPRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIHttpRule__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "pattern",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void GAPIHttpRule_ClearPatternOneOfCase(GAPIHttpRule *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - GAPICustomHttpPattern

@implementation GAPICustomHttpPattern

@dynamic kind;
@dynamic path;

typedef struct GAPICustomHttpPattern__storage_ {
  uint32_t _has_storage_[1];
  NSString *kind;
  NSString *path;
} GAPICustomHttpPattern__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "kind",
        .dataTypeSpecific.className = NULL,
        .number = GAPICustomHttpPattern_FieldNumber_Kind,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GAPICustomHttpPattern__storage_, kind),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "path",
        .dataTypeSpecific.className = NULL,
        .number = GAPICustomHttpPattern_FieldNumber_Path,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GAPICustomHttpPattern__storage_, path),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPICustomHttpPattern class]
                                     rootClass:[GAPIHTTPRoot class]
                                          file:GAPIHTTPRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPICustomHttpPattern__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
