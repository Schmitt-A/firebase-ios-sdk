/*
 * Copyright 2021 Google
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

/* Automatically generated nanopb constant definitions */
/* Generated by nanopb-0.3.9.8 */

#include "perf_metric.nanopb.h"

/* @@protoc_insertion_point(includes) */
#if PB_PROTO_HEADER_VERSION != 30
#error Regenerate this file with the current version of nanopb generator.
#endif

const firebase_perf_v1_NetworkConnectionInfo_NetworkType firebase_perf_v1_NetworkConnectionInfo_network_type_default = firebase_perf_v1_NetworkConnectionInfo_NetworkType_NONE;
const firebase_perf_v1_NetworkConnectionInfo_MobileSubtype firebase_perf_v1_NetworkConnectionInfo_mobile_subtype_default = firebase_perf_v1_NetworkConnectionInfo_MobileSubtype_UNKNOWN_MOBILE_SUBTYPE;


const pb_field_t firebase_perf_v1_PerfMetric_fields[6] = {
    PB_FIELD(  1, MESSAGE , OPTIONAL, STATIC  , FIRST, firebase_perf_v1_PerfMetric, application_info, application_info, &firebase_perf_v1_ApplicationInfo_fields),
    PB_FIELD(  2, MESSAGE , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_PerfMetric, trace_metric, application_info, &firebase_perf_v1_TraceMetric_fields),
    PB_FIELD(  3, MESSAGE , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_PerfMetric, network_request_metric, trace_metric, &firebase_perf_v1_NetworkRequestMetric_fields),
    PB_FIELD(  4, MESSAGE , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_PerfMetric, gauge_metric, network_request_metric, &firebase_perf_v1_GaugeMetric_fields),
    PB_FIELD(  5, MESSAGE , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_PerfMetric, transport_info, gauge_metric, &firebase_perf_v1_TransportInfo_fields),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_TraceMetric_fields[9] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_TraceMetric, name, name, 0),
    PB_FIELD(  2, BOOL    , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_TraceMetric, is_auto, name, 0),
    PB_FIELD(  4, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_TraceMetric, client_start_time_us, is_auto, 0),
    PB_FIELD(  5, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_TraceMetric, duration_us, client_start_time_us, 0),
    PB_FIELD(  6, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_TraceMetric, counters, duration_us, &firebase_perf_v1_TraceMetric_CountersEntry_fields),
    PB_FIELD(  7, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_TraceMetric, subtraces, counters, &firebase_perf_v1_TraceMetric_fields),
    PB_FIELD(  8, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_TraceMetric, custom_attributes, subtraces, &firebase_perf_v1_TraceMetric_CustomAttributesEntry_fields),
    PB_FIELD(  9, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_TraceMetric, perf_sessions, custom_attributes, &firebase_perf_v1_PerfSession_fields),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_TraceMetric_CountersEntry_fields[3] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_TraceMetric_CountersEntry, key, key, 0),
    PB_FIELD(  2, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_TraceMetric_CountersEntry, value, key, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_TraceMetric_CustomAttributesEntry_fields[3] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_TraceMetric_CustomAttributesEntry, key, key, 0),
    PB_FIELD(  2, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_TraceMetric_CustomAttributesEntry, value, key, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_NetworkRequestMetric_fields[14] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_NetworkRequestMetric, url, url, 0),
    PB_FIELD(  2, UENUM   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkRequestMetric, http_method, url, 0),
    PB_FIELD(  3, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkRequestMetric, request_payload_bytes, http_method, 0),
    PB_FIELD(  4, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkRequestMetric, response_payload_bytes, request_payload_bytes, 0),
    PB_FIELD(  5, INT32   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkRequestMetric, http_response_code, response_payload_bytes, 0),
    PB_FIELD(  6, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_NetworkRequestMetric, response_content_type, http_response_code, 0),
    PB_FIELD(  7, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkRequestMetric, client_start_time_us, response_content_type, 0),
    PB_FIELD(  8, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkRequestMetric, time_to_request_completed_us, client_start_time_us, 0),
    PB_FIELD(  9, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkRequestMetric, time_to_response_initiated_us, time_to_request_completed_us, 0),
    PB_FIELD( 10, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkRequestMetric, time_to_response_completed_us, time_to_response_initiated_us, 0),
    PB_FIELD( 11, UENUM   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkRequestMetric, network_client_error_reason, time_to_response_completed_us, 0),
    PB_FIELD( 12, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_NetworkRequestMetric, custom_attributes, network_client_error_reason, &firebase_perf_v1_NetworkRequestMetric_CustomAttributesEntry_fields),
    PB_FIELD( 13, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_NetworkRequestMetric, perf_sessions, custom_attributes, &firebase_perf_v1_PerfSession_fields),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_NetworkRequestMetric_CustomAttributesEntry_fields[3] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_NetworkRequestMetric_CustomAttributesEntry, key, key, 0),
    PB_FIELD(  2, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_NetworkRequestMetric_CustomAttributesEntry, value, key, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_PerfSession_fields[3] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_PerfSession, session_id, session_id, 0),
    PB_FIELD(  2, UENUM   , REPEATED, POINTER , OTHER, firebase_perf_v1_PerfSession, session_verbosity, session_id, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_GaugeMetric_fields[6] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_GaugeMetric, session_id, session_id, 0),
    PB_FIELD(  2, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_GaugeMetric, cpu_metric_readings, session_id, &firebase_perf_v1_CpuMetricReading_fields),
    PB_FIELD(  3, MESSAGE , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_GaugeMetric, gauge_metadata, cpu_metric_readings, &firebase_perf_v1_GaugeMetadata_fields),
    PB_FIELD(  4, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_GaugeMetric, android_memory_readings, gauge_metadata, &firebase_perf_v1_AndroidMemoryReading_fields),
    PB_FIELD(  5, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_GaugeMetric, ios_memory_readings, android_memory_readings, &firebase_perf_v1_IosMemoryReading_fields),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_CpuMetricReading_fields[4] = {
    PB_FIELD(  1, INT64   , OPTIONAL, STATIC  , FIRST, firebase_perf_v1_CpuMetricReading, client_time_us, client_time_us, 0),
    PB_FIELD(  2, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_CpuMetricReading, user_time_us, client_time_us, 0),
    PB_FIELD(  3, INT64   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_CpuMetricReading, system_time_us, user_time_us, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_IosMemoryReading_fields[4] = {
    PB_FIELD(  1, INT64   , OPTIONAL, STATIC  , FIRST, firebase_perf_v1_IosMemoryReading, client_time_us, client_time_us, 0),
    PB_FIELD(  2, INT32   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_IosMemoryReading, used_app_heap_memory_kb, client_time_us, 0),
    PB_FIELD(  3, INT32   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_IosMemoryReading, free_app_heap_memory_kb, used_app_heap_memory_kb, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_AndroidMemoryReading_fields[3] = {
    PB_FIELD(  1, INT64   , OPTIONAL, STATIC  , FIRST, firebase_perf_v1_AndroidMemoryReading, client_time_us, client_time_us, 0),
    PB_FIELD(  2, INT32   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_AndroidMemoryReading, used_app_java_heap_memory_kb, client_time_us, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_GaugeMetadata_fields[7] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_GaugeMetadata, process_name, process_name, 0),
    PB_FIELD(  2, INT32   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_GaugeMetadata, cpu_clock_rate_khz, process_name, 0),
    PB_FIELD(  3, INT32   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_GaugeMetadata, device_ram_size_kb, cpu_clock_rate_khz, 0),
    PB_FIELD(  4, INT32   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_GaugeMetadata, max_app_java_heap_memory_kb, device_ram_size_kb, 0),
    PB_FIELD(  5, INT32   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_GaugeMetadata, max_encouraged_app_java_heap_memory_kb, max_app_java_heap_memory_kb, 0),
    PB_FIELD(  6, INT32   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_GaugeMetadata, cpu_processor_count, max_encouraged_app_java_heap_memory_kb, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_ApplicationInfo_fields[8] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_ApplicationInfo, google_app_id, google_app_id, 0),
    PB_FIELD(  2, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_ApplicationInfo, app_instance_id, google_app_id, 0),
    PB_FIELD(  3, MESSAGE , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_ApplicationInfo, android_app_info, app_instance_id, &firebase_perf_v1_AndroidApplicationInfo_fields),
    PB_FIELD(  4, MESSAGE , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_ApplicationInfo, ios_app_info, android_app_info, &firebase_perf_v1_IosApplicationInfo_fields),
    PB_FIELD(  5, UENUM   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_ApplicationInfo, application_process_state, ios_app_info, 0),
    PB_FIELD(  6, MESSAGE , REPEATED, POINTER , OTHER, firebase_perf_v1_ApplicationInfo, custom_attributes, application_process_state, &firebase_perf_v1_ApplicationInfo_CustomAttributesEntry_fields),
    PB_FIELD(  7, MESSAGE , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_ApplicationInfo, web_app_info, custom_attributes, &firebase_perf_v1_WebApplicationInfo_fields),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_ApplicationInfo_CustomAttributesEntry_fields[3] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_ApplicationInfo_CustomAttributesEntry, key, key, 0),
    PB_FIELD(  2, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_ApplicationInfo_CustomAttributesEntry, value, key, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_WebApplicationInfo_fields[6] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_WebApplicationInfo, sdk_version, sdk_version, 0),
    PB_FIELD(  2, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_WebApplicationInfo, page_url, sdk_version, 0),
    PB_FIELD(  3, UENUM   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_WebApplicationInfo, service_worker_status, page_url, 0),
    PB_FIELD(  4, UENUM   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_WebApplicationInfo, visibility_state, service_worker_status, 0),
    PB_FIELD(  5, UENUM   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_WebApplicationInfo, effective_connection_type, visibility_state, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_AndroidApplicationInfo_fields[4] = {
    PB_FIELD(  1, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_AndroidApplicationInfo, package_name, package_name, 0),
    PB_FIELD(  2, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_AndroidApplicationInfo, sdk_version, package_name, 0),
    PB_FIELD(  3, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_AndroidApplicationInfo, version_name, sdk_version, 0),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_NetworkConnectionInfo_fields[3] = {
    PB_FIELD(  1, ENUM    , OPTIONAL, STATIC  , FIRST, firebase_perf_v1_NetworkConnectionInfo, network_type, network_type, &firebase_perf_v1_NetworkConnectionInfo_network_type_default),
    PB_FIELD(  2, UENUM   , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_NetworkConnectionInfo, mobile_subtype, network_type, &firebase_perf_v1_NetworkConnectionInfo_mobile_subtype_default),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_IosApplicationInfo_fields[5] = {
    PB_FIELD(  2, BYTES   , OPTIONAL, POINTER , FIRST, firebase_perf_v1_IosApplicationInfo, sdk_version, sdk_version, 0),
    PB_FIELD(  3, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_IosApplicationInfo, bundle_short_version, sdk_version, 0),
    PB_FIELD(  4, BYTES   , OPTIONAL, POINTER , OTHER, firebase_perf_v1_IosApplicationInfo, mcc_mnc, bundle_short_version, 0),
    PB_FIELD(  5, MESSAGE , OPTIONAL, STATIC  , OTHER, firebase_perf_v1_IosApplicationInfo, network_connection_info, mcc_mnc, &firebase_perf_v1_NetworkConnectionInfo_fields),
    PB_LAST_FIELD
};

const pb_field_t firebase_perf_v1_TransportInfo_fields[2] = {
    PB_FIELD(  1, UENUM   , OPTIONAL, STATIC  , FIRST, firebase_perf_v1_TransportInfo, dispatch_destination, dispatch_destination, 0),
    PB_LAST_FIELD
};












/* Check that field information fits in pb_field_t */
#if !defined(PB_FIELD_32BIT)
/* If you get an error here, it means that you need to define PB_FIELD_32BIT
 * compile-time option. You can do that in pb.h or on compiler command line.
 *
 * The reason you need to do this is that some of your messages contain tag
 * numbers or field sizes that are larger than what can fit in 8 or 16 bit
 * field descriptors.
 */
PB_STATIC_ASSERT((pb_membersize(firebase_perf_v1_PerfMetric, application_info) < 65536 && pb_membersize(firebase_perf_v1_PerfMetric, trace_metric) < 65536 && pb_membersize(firebase_perf_v1_PerfMetric, network_request_metric) < 65536 && pb_membersize(firebase_perf_v1_PerfMetric, gauge_metric) < 65536 && pb_membersize(firebase_perf_v1_PerfMetric, transport_info) < 65536 && pb_membersize(firebase_perf_v1_GaugeMetric, gauge_metadata) < 65536 && pb_membersize(firebase_perf_v1_ApplicationInfo, android_app_info) < 65536 && pb_membersize(firebase_perf_v1_ApplicationInfo, ios_app_info) < 65536 && pb_membersize(firebase_perf_v1_ApplicationInfo, web_app_info) < 65536 && pb_membersize(firebase_perf_v1_IosApplicationInfo, network_connection_info) < 65536), YOU_MUST_DEFINE_PB_FIELD_32BIT_FOR_MESSAGES_firebase_perf_v1_PerfMetric_firebase_perf_v1_TraceMetric_firebase_perf_v1_TraceMetric_CountersEntry_firebase_perf_v1_TraceMetric_CustomAttributesEntry_firebase_perf_v1_NetworkRequestMetric_firebase_perf_v1_NetworkRequestMetric_CustomAttributesEntry_firebase_perf_v1_PerfSession_firebase_perf_v1_GaugeMetric_firebase_perf_v1_CpuMetricReading_firebase_perf_v1_IosMemoryReading_firebase_perf_v1_AndroidMemoryReading_firebase_perf_v1_GaugeMetadata_firebase_perf_v1_ApplicationInfo_firebase_perf_v1_ApplicationInfo_CustomAttributesEntry_firebase_perf_v1_WebApplicationInfo_firebase_perf_v1_AndroidApplicationInfo_firebase_perf_v1_NetworkConnectionInfo_firebase_perf_v1_IosApplicationInfo_firebase_perf_v1_TransportInfo)
#endif

#if !defined(PB_FIELD_16BIT) && !defined(PB_FIELD_32BIT)
/* If you get an error here, it means that you need to define PB_FIELD_16BIT
 * compile-time option. You can do that in pb.h or on compiler command line.
 *
 * The reason you need to do this is that some of your messages contain tag
 * numbers or field sizes that are larger than what can fit in the default
 * 8 bit descriptors.
 */
PB_STATIC_ASSERT((pb_membersize(firebase_perf_v1_PerfMetric, application_info) < 256 && pb_membersize(firebase_perf_v1_PerfMetric, trace_metric) < 256 && pb_membersize(firebase_perf_v1_PerfMetric, network_request_metric) < 256 && pb_membersize(firebase_perf_v1_PerfMetric, gauge_metric) < 256 && pb_membersize(firebase_perf_v1_PerfMetric, transport_info) < 256 && pb_membersize(firebase_perf_v1_GaugeMetric, gauge_metadata) < 256 && pb_membersize(firebase_perf_v1_ApplicationInfo, android_app_info) < 256 && pb_membersize(firebase_perf_v1_ApplicationInfo, ios_app_info) < 256 && pb_membersize(firebase_perf_v1_ApplicationInfo, web_app_info) < 256 && pb_membersize(firebase_perf_v1_IosApplicationInfo, network_connection_info) < 256), YOU_MUST_DEFINE_PB_FIELD_16BIT_FOR_MESSAGES_firebase_perf_v1_PerfMetric_firebase_perf_v1_TraceMetric_firebase_perf_v1_TraceMetric_CountersEntry_firebase_perf_v1_TraceMetric_CustomAttributesEntry_firebase_perf_v1_NetworkRequestMetric_firebase_perf_v1_NetworkRequestMetric_CustomAttributesEntry_firebase_perf_v1_PerfSession_firebase_perf_v1_GaugeMetric_firebase_perf_v1_CpuMetricReading_firebase_perf_v1_IosMemoryReading_firebase_perf_v1_AndroidMemoryReading_firebase_perf_v1_GaugeMetadata_firebase_perf_v1_ApplicationInfo_firebase_perf_v1_ApplicationInfo_CustomAttributesEntry_firebase_perf_v1_WebApplicationInfo_firebase_perf_v1_AndroidApplicationInfo_firebase_perf_v1_NetworkConnectionInfo_firebase_perf_v1_IosApplicationInfo_firebase_perf_v1_TransportInfo)
#endif


/* @@protoc_insertion_point(eof) */
