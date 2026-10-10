variable "dms_s3_endpoints" {
  description = <<EOT
Map of dms_s3_endpoints, attributes below
Required:
    - bucket_name
    - endpoint_id
    - endpoint_type
    - service_access_role_arn
Optional:
    - add_column_name
    - add_trailing_padding_character
    - bucket_folder
    - canned_acl_for_objects
    - cdc_inserts_and_updates
    - cdc_inserts_only
    - cdc_max_batch_interval
    - cdc_min_file_size
    - cdc_path
    - certificate_arn
    - compression_type
    - csv_delimiter
    - csv_no_sup_value
    - csv_null_value
    - csv_row_delimiter
    - data_format
    - data_page_size
    - date_partition_delimiter
    - date_partition_enabled
    - date_partition_sequence
    - date_partition_timezone
    - detach_target_on_lob_lookup_failure_parquet
    - dict_page_size_limit
    - enable_statistics
    - encoding_type
    - encryption_mode
    - expected_bucket_owner
    - external_table_definition
    - glue_catalog_generation
    - ignore_header_rows
    - include_op_for_full_load
    - kms_key_arn
    - max_file_size
    - parquet_timestamp_in_millisecond
    - parquet_version
    - preserve_transactions
    - region
    - rfc_4180
    - row_group_length
    - server_side_encryption_kms_key_id
    - ssl_mode
    - tags
    - tags_all
    - timestamp_column_name
    - use_csv_no_sup_value
    - use_task_start_time_for_full_load_timestamp
EOT

  type = map(object({
    bucket_name                                 = string
    endpoint_id                                 = string
    endpoint_type                               = string
    service_access_role_arn                     = string
    encoding_type                               = optional(string)
    encryption_mode                             = optional(string)
    expected_bucket_owner                       = optional(string)
    external_table_definition                   = optional(string)
    glue_catalog_generation                     = optional(bool)
    ignore_header_rows                          = optional(number)
    include_op_for_full_load                    = optional(bool)
    kms_key_arn                                 = optional(string)
    max_file_size                               = optional(number)
    parquet_timestamp_in_millisecond            = optional(bool)
    preserve_transactions                       = optional(bool)
    enable_statistics                           = optional(bool)
    region                                      = optional(string)
    rfc_4180                                    = optional(bool)
    row_group_length                            = optional(number)
    server_side_encryption_kms_key_id           = optional(string)
    ssl_mode                                    = optional(string)
    tags                                        = optional(map(string))
    tags_all                                    = optional(map(string))
    timestamp_column_name                       = optional(string)
    parquet_version                             = optional(string)
    dict_page_size_limit                        = optional(number)
    date_partition_timezone                     = optional(string)
    use_csv_no_sup_value                        = optional(bool)
    add_column_name                             = optional(bool)
    add_trailing_padding_character              = optional(bool)
    bucket_folder                               = optional(string)
    canned_acl_for_objects                      = optional(string)
    cdc_inserts_and_updates                     = optional(bool)
    cdc_inserts_only                            = optional(bool)
    cdc_max_batch_interval                      = optional(number)
    cdc_min_file_size                           = optional(number)
    cdc_path                                    = optional(string)
    detach_target_on_lob_lookup_failure_parquet = optional(bool)
    certificate_arn                             = optional(string)
    csv_delimiter                               = optional(string)
    csv_no_sup_value                            = optional(string)
    csv_null_value                              = optional(string)
    csv_row_delimiter                           = optional(string)
    data_format                                 = optional(string)
    data_page_size                              = optional(number)
    date_partition_delimiter                    = optional(string)
    date_partition_enabled                      = optional(bool)
    date_partition_sequence                     = optional(string)
    compression_type                            = optional(string)
    use_task_start_time_for_full_load_timestamp = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.dms_s3_endpoints : (
        v.cdc_max_batch_interval == null || (v.cdc_max_batch_interval >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.dms_s3_endpoints : (
        v.cdc_min_file_size == null || (v.cdc_min_file_size >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.dms_s3_endpoints : (
        v.data_page_size == null || (v.data_page_size >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.dms_s3_endpoints : (
        v.dict_page_size_limit == null || (v.dict_page_size_limit >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.dms_s3_endpoints : (
        v.external_table_definition == null || (can(jsondecode(v.external_table_definition)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dms_s3_endpoints : (
        v.ignore_header_rows == null || (contains([0, 1], v.ignore_header_rows))
      )
    ])
    error_message = "must be one of: 0, 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.dms_s3_endpoints : (
        v.max_file_size == null || (v.max_file_size >= 1 && v.max_file_size <= 1048576)
      )
    ])
    error_message = "must be between 1 and 1048576"
  }
  validation {
    condition = alltrue([
      for k, v in var.dms_s3_endpoints : (
        v.row_group_length == null || (v.row_group_length >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 16 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

