output "dms_s3_endpoints_id" {
  description = "Map of id values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dms_s3_endpoints_add_column_name" {
  description = "Map of add_column_name values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.add_column_name if v.add_column_name != null }
}
output "dms_s3_endpoints_add_trailing_padding_character" {
  description = "Map of add_trailing_padding_character values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.add_trailing_padding_character if v.add_trailing_padding_character != null }
}
output "dms_s3_endpoints_bucket_folder" {
  description = "Map of bucket_folder values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.bucket_folder if v.bucket_folder != null && length(v.bucket_folder) > 0 }
}
output "dms_s3_endpoints_bucket_name" {
  description = "Map of bucket_name values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.bucket_name if v.bucket_name != null && length(v.bucket_name) > 0 }
}
output "dms_s3_endpoints_canned_acl_for_objects" {
  description = "Map of canned_acl_for_objects values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.canned_acl_for_objects if v.canned_acl_for_objects != null && length(v.canned_acl_for_objects) > 0 }
}
output "dms_s3_endpoints_cdc_inserts_and_updates" {
  description = "Map of cdc_inserts_and_updates values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.cdc_inserts_and_updates if v.cdc_inserts_and_updates != null }
}
output "dms_s3_endpoints_cdc_inserts_only" {
  description = "Map of cdc_inserts_only values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.cdc_inserts_only if v.cdc_inserts_only != null }
}
output "dms_s3_endpoints_cdc_max_batch_interval" {
  description = "Map of cdc_max_batch_interval values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.cdc_max_batch_interval if v.cdc_max_batch_interval != null }
}
output "dms_s3_endpoints_cdc_min_file_size" {
  description = "Map of cdc_min_file_size values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.cdc_min_file_size if v.cdc_min_file_size != null }
}
output "dms_s3_endpoints_cdc_path" {
  description = "Map of cdc_path values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.cdc_path if v.cdc_path != null && length(v.cdc_path) > 0 }
}
output "dms_s3_endpoints_certificate_arn" {
  description = "Map of certificate_arn values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.certificate_arn if v.certificate_arn != null && length(v.certificate_arn) > 0 }
}
output "dms_s3_endpoints_compression_type" {
  description = "Map of compression_type values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.compression_type if v.compression_type != null && length(v.compression_type) > 0 }
}
output "dms_s3_endpoints_csv_delimiter" {
  description = "Map of csv_delimiter values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.csv_delimiter if v.csv_delimiter != null && length(v.csv_delimiter) > 0 }
}
output "dms_s3_endpoints_csv_no_sup_value" {
  description = "Map of csv_no_sup_value values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.csv_no_sup_value if v.csv_no_sup_value != null && length(v.csv_no_sup_value) > 0 }
}
output "dms_s3_endpoints_csv_null_value" {
  description = "Map of csv_null_value values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.csv_null_value if v.csv_null_value != null && length(v.csv_null_value) > 0 }
}
output "dms_s3_endpoints_csv_row_delimiter" {
  description = "Map of csv_row_delimiter values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.csv_row_delimiter if v.csv_row_delimiter != null && length(v.csv_row_delimiter) > 0 }
}
output "dms_s3_endpoints_data_format" {
  description = "Map of data_format values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.data_format if v.data_format != null && length(v.data_format) > 0 }
}
output "dms_s3_endpoints_data_page_size" {
  description = "Map of data_page_size values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.data_page_size if v.data_page_size != null }
}
output "dms_s3_endpoints_date_partition_delimiter" {
  description = "Map of date_partition_delimiter values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.date_partition_delimiter if v.date_partition_delimiter != null && length(v.date_partition_delimiter) > 0 }
}
output "dms_s3_endpoints_date_partition_enabled" {
  description = "Map of date_partition_enabled values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.date_partition_enabled if v.date_partition_enabled != null }
}
output "dms_s3_endpoints_date_partition_sequence" {
  description = "Map of date_partition_sequence values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.date_partition_sequence if v.date_partition_sequence != null && length(v.date_partition_sequence) > 0 }
}
output "dms_s3_endpoints_date_partition_timezone" {
  description = "Map of date_partition_timezone values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.date_partition_timezone if v.date_partition_timezone != null && length(v.date_partition_timezone) > 0 }
}
output "dms_s3_endpoints_detach_target_on_lob_lookup_failure_parquet" {
  description = "Map of detach_target_on_lob_lookup_failure_parquet values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.detach_target_on_lob_lookup_failure_parquet if v.detach_target_on_lob_lookup_failure_parquet != null }
}
output "dms_s3_endpoints_dict_page_size_limit" {
  description = "Map of dict_page_size_limit values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.dict_page_size_limit if v.dict_page_size_limit != null }
}
output "dms_s3_endpoints_enable_statistics" {
  description = "Map of enable_statistics values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.enable_statistics if v.enable_statistics != null }
}
output "dms_s3_endpoints_encoding_type" {
  description = "Map of encoding_type values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.encoding_type if v.encoding_type != null && length(v.encoding_type) > 0 }
}
output "dms_s3_endpoints_encryption_mode" {
  description = "Map of encryption_mode values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.encryption_mode if v.encryption_mode != null && length(v.encryption_mode) > 0 }
}
output "dms_s3_endpoints_endpoint_arn" {
  description = "Map of endpoint_arn values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.endpoint_arn if v.endpoint_arn != null && length(v.endpoint_arn) > 0 }
}
output "dms_s3_endpoints_endpoint_id" {
  description = "Map of endpoint_id values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.endpoint_id if v.endpoint_id != null && length(v.endpoint_id) > 0 }
}
output "dms_s3_endpoints_endpoint_type" {
  description = "Map of endpoint_type values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.endpoint_type if v.endpoint_type != null && length(v.endpoint_type) > 0 }
}
output "dms_s3_endpoints_engine_display_name" {
  description = "Map of engine_display_name values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.engine_display_name if v.engine_display_name != null && length(v.engine_display_name) > 0 }
}
output "dms_s3_endpoints_expected_bucket_owner" {
  description = "Map of expected_bucket_owner values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.expected_bucket_owner if v.expected_bucket_owner != null && length(v.expected_bucket_owner) > 0 }
}
output "dms_s3_endpoints_external_id" {
  description = "Map of external_id values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "dms_s3_endpoints_external_table_definition" {
  description = "Map of external_table_definition values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.external_table_definition if v.external_table_definition != null && length(v.external_table_definition) > 0 }
}
output "dms_s3_endpoints_glue_catalog_generation" {
  description = "Map of glue_catalog_generation values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.glue_catalog_generation if v.glue_catalog_generation != null }
}
output "dms_s3_endpoints_ignore_header_rows" {
  description = "Map of ignore_header_rows values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.ignore_header_rows if v.ignore_header_rows != null }
}
output "dms_s3_endpoints_include_op_for_full_load" {
  description = "Map of include_op_for_full_load values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.include_op_for_full_load if v.include_op_for_full_load != null }
}
output "dms_s3_endpoints_kms_key_arn" {
  description = "Map of kms_key_arn values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "dms_s3_endpoints_max_file_size" {
  description = "Map of max_file_size values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.max_file_size if v.max_file_size != null }
}
output "dms_s3_endpoints_parquet_timestamp_in_millisecond" {
  description = "Map of parquet_timestamp_in_millisecond values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.parquet_timestamp_in_millisecond if v.parquet_timestamp_in_millisecond != null }
}
output "dms_s3_endpoints_parquet_version" {
  description = "Map of parquet_version values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.parquet_version if v.parquet_version != null && length(v.parquet_version) > 0 }
}
output "dms_s3_endpoints_preserve_transactions" {
  description = "Map of preserve_transactions values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.preserve_transactions if v.preserve_transactions != null }
}
output "dms_s3_endpoints_region" {
  description = "Map of region values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dms_s3_endpoints_rfc_4180" {
  description = "Map of rfc_4180 values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.rfc_4180 if v.rfc_4180 != null }
}
output "dms_s3_endpoints_row_group_length" {
  description = "Map of row_group_length values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.row_group_length if v.row_group_length != null }
}
output "dms_s3_endpoints_server_side_encryption_kms_key_id" {
  description = "Map of server_side_encryption_kms_key_id values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.server_side_encryption_kms_key_id if v.server_side_encryption_kms_key_id != null && length(v.server_side_encryption_kms_key_id) > 0 }
}
output "dms_s3_endpoints_service_access_role_arn" {
  description = "Map of service_access_role_arn values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.service_access_role_arn if v.service_access_role_arn != null && length(v.service_access_role_arn) > 0 }
}
output "dms_s3_endpoints_ssl_mode" {
  description = "Map of ssl_mode values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.ssl_mode if v.ssl_mode != null && length(v.ssl_mode) > 0 }
}
output "dms_s3_endpoints_status" {
  description = "Map of status values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.status if v.status != null && length(v.status) > 0 }
}
output "dms_s3_endpoints_tags" {
  description = "Map of tags values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dms_s3_endpoints_tags_all" {
  description = "Map of tags_all values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "dms_s3_endpoints_timestamp_column_name" {
  description = "Map of timestamp_column_name values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.timestamp_column_name if v.timestamp_column_name != null && length(v.timestamp_column_name) > 0 }
}
output "dms_s3_endpoints_use_csv_no_sup_value" {
  description = "Map of use_csv_no_sup_value values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.use_csv_no_sup_value if v.use_csv_no_sup_value != null }
}
output "dms_s3_endpoints_use_task_start_time_for_full_load_timestamp" {
  description = "Map of use_task_start_time_for_full_load_timestamp values across all dms_s3_endpoints, keyed the same as var.dms_s3_endpoints"
  value       = { for k, v in aws_dms_s3_endpoint.dms_s3_endpoints : k => v.use_task_start_time_for_full_load_timestamp if v.use_task_start_time_for_full_load_timestamp != null }
}

