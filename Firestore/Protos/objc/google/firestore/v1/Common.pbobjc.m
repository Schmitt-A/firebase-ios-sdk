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
// source: google/firestore/v1/common.proto

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

#import "Common.pbobjc.h"
#import "Annotations.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - GCFSCommonRoot

@implementation GCFSCommonRoot


@end

#pragma mark - GCFSCommonRoot_FileDescriptor

static GPBFileDescriptor *GCFSCommonRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.firestore.v1"
                                                 objcPrefix:@"GCFS"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GCFSDocumentMask

@implementation GCFSDocumentMask

@dynamic fieldPathsArray, fieldPathsArray_Count;

typedef struct GCFSDocumentMask__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *fieldPathsArray;
} GCFSDocumentMask__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fieldPathsArray",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocumentMask_FieldNumber_FieldPathsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSDocumentMask__storage_, fieldPathsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSDocumentMask class]
                                     rootClass:[GCFSCommonRoot class]
                                          file:GCFSCommonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSDocumentMask__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GCFSPrecondition

@implementation GCFSPrecondition

@dynamic conditionTypeOneOfCase;
@dynamic exists;
@dynamic updateTime;

typedef struct GCFSPrecondition__storage_ {
  uint32_t _has_storage_[2];
  GPBTimestamp *updateTime;
} GCFSPrecondition__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "exists",
        .dataTypeSpecific.className = NULL,
        .number = GCFSPrecondition_FieldNumber_Exists,
        .hasIndex = -1,
        .offset = 0,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "updateTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = GCFSPrecondition_FieldNumber_UpdateTime,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSPrecondition__storage_, updateTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSPrecondition class]
                                     rootClass:[GCFSCommonRoot class]
                                          file:GCFSCommonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSPrecondition__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "conditionType",
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

void GCFSPrecondition_ClearConditionTypeOneOfCase(GCFSPrecondition *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - GCFSTransactionOptions

@implementation GCFSTransactionOptions

@dynamic modeOneOfCase;
@dynamic readOnly;
@dynamic readWrite;

typedef struct GCFSTransactionOptions__storage_ {
  uint32_t _has_storage_[2];
  GCFSTransactionOptions_ReadOnly *readOnly;
  GCFSTransactionOptions_ReadWrite *readWrite;
} GCFSTransactionOptions__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "readOnly",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSTransactionOptions_ReadOnly),
        .number = GCFSTransactionOptions_FieldNumber_ReadOnly,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSTransactionOptions__storage_, readOnly),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "readWrite",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSTransactionOptions_ReadWrite),
        .number = GCFSTransactionOptions_FieldNumber_ReadWrite,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSTransactionOptions__storage_, readWrite),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSTransactionOptions class]
                                     rootClass:[GCFSCommonRoot class]
                                          file:GCFSCommonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSTransactionOptions__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "mode",
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

void GCFSTransactionOptions_ClearModeOneOfCase(GCFSTransactionOptions *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - GCFSTransactionOptions_ReadWrite

@implementation GCFSTransactionOptions_ReadWrite

@dynamic retryTransaction;

typedef struct GCFSTransactionOptions_ReadWrite__storage_ {
  uint32_t _has_storage_[1];
  NSData *retryTransaction;
} GCFSTransactionOptions_ReadWrite__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "retryTransaction",
        .dataTypeSpecific.className = NULL,
        .number = GCFSTransactionOptions_ReadWrite_FieldNumber_RetryTransaction,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSTransactionOptions_ReadWrite__storage_, retryTransaction),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSTransactionOptions_ReadWrite class]
                                     rootClass:[GCFSCommonRoot class]
                                          file:GCFSCommonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSTransactionOptions_ReadWrite__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GCFSTransactionOptions)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GCFSTransactionOptions_ReadOnly

@implementation GCFSTransactionOptions_ReadOnly

@dynamic consistencySelectorOneOfCase;
@dynamic readTime;

typedef struct GCFSTransactionOptions_ReadOnly__storage_ {
  uint32_t _has_storage_[2];
  GPBTimestamp *readTime;
} GCFSTransactionOptions_ReadOnly__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "readTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = GCFSTransactionOptions_ReadOnly_FieldNumber_ReadTime,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSTransactionOptions_ReadOnly__storage_, readTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSTransactionOptions_ReadOnly class]
                                     rootClass:[GCFSCommonRoot class]
                                          file:GCFSCommonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSTransactionOptions_ReadOnly__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "consistencySelector",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GCFSTransactionOptions)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void GCFSTransactionOptions_ReadOnly_ClearConsistencySelectorOneOfCase(GCFSTransactionOptions_ReadOnly *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
