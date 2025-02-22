# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AIPlatform
      module V1
        # Represents a job that runs periodically to monitor the deployed models in an
        # endpoint. It will analyze the logged training & prediction data to detect any
        # abnormal behaviors.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of a ModelDeploymentMonitoringJob.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The user-defined name of the ModelDeploymentMonitoringJob.
        #     The name can be up to 128 characters long and can be consist of any UTF-8
        #     characters.
        #     Display name of a ModelDeploymentMonitoringJob.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. Endpoint resource name.
        #     Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [r] state
        #   @return [::Google::Cloud::AIPlatform::V1::JobState]
        #     Output only. The detailed state of the monitoring job.
        #     When the job is still creating, the state will be 'PENDING'.
        #     Once the job is successfully created, the state will be 'RUNNING'.
        #     Pause the job, the state will be 'PAUSED'.
        #     Resume the job, the state will return to 'RUNNING'.
        # @!attribute [r] schedule_state
        #   @return [::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringJob::MonitoringScheduleState]
        #     Output only. Schedule state when the monitoring job is in Running state.
        # @!attribute [r] latest_monitoring_pipeline_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringJob::LatestMonitoringPipelineMetadata]
        #     Output only. Latest triggered monitoring pipeline metadata.
        # @!attribute [rw] model_deployment_monitoring_objective_configs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringObjectiveConfig>]
        #     Required. The config for monitoring objectives. This is a per DeployedModel config.
        #     Each DeployedModel needs to be configured separately.
        # @!attribute [rw] model_deployment_monitoring_schedule_config
        #   @return [::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringScheduleConfig]
        #     Required. Schedule config for running the monitoring job.
        # @!attribute [rw] logging_sampling_strategy
        #   @return [::Google::Cloud::AIPlatform::V1::SamplingStrategy]
        #     Required. Sample Strategy for logging.
        # @!attribute [rw] model_monitoring_alert_config
        #   @return [::Google::Cloud::AIPlatform::V1::ModelMonitoringAlertConfig]
        #     Alert config for model monitoring.
        # @!attribute [rw] predict_instance_schema_uri
        #   @return [::String]
        #     YAML schema file uri describing the format of a single instance,
        #     which are given to format this Endpoint's prediction (and explanation).
        #     If not set, we will generate predict schema from collected predict
        #     requests.
        # @!attribute [rw] sample_predict_instance
        #   @return [::Google::Protobuf::Value]
        #     Sample Predict instance, same format as {::Google::Cloud::AIPlatform::V1::PredictRequest#instances PredictRequest.instances},
        #     this can be set as a replacement of
        #     {::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringJob#predict_instance_schema_uri ModelDeploymentMonitoringJob.predict_instance_schema_uri}. If not set,
        #     we will generate predict schema from collected predict requests.
        # @!attribute [rw] analysis_instance_schema_uri
        #   @return [::String]
        #     YAML schema file uri describing the format of a single instance that you
        #     want Tensorflow Data Validation (TFDV) to analyze.
        #
        #     If this field is empty, all the feature data types are inferred from
        #     {::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringJob#predict_instance_schema_uri predict_instance_schema_uri},
        #     meaning that TFDV will use the data in the exact format(data type) as
        #     prediction request/response.
        #     If there are any data type differences between predict instance and TFDV
        #     instance, this field can be used to override the schema.
        #     For models trained with Vertex AI, this field must be set as all the
        #     fields in predict instance formatted as string.
        # @!attribute [r] bigquery_tables
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringBigQueryTable>]
        #     Output only. The created bigquery tables for the job under customer project. Customer
        #     could do their own query & analysis. There could be 4 log tables in
        #     maximum:
        #     1. Training data logging predict request/response
        #     2. Serving data logging predict request/response
        # @!attribute [rw] log_ttl
        #   @return [::Google::Protobuf::Duration]
        #     The TTL of BigQuery tables in user projects which stores logs.
        #     A day is the basic unit of the TTL and we take the ceil of TTL/86400(a
        #     day). e.g. { second: 3600} indicates ttl = 1 day.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels with user-defined metadata to organize your
        #     ModelDeploymentMonitoringJob.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this ModelDeploymentMonitoringJob was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this ModelDeploymentMonitoringJob was updated most recently.
        # @!attribute [r] next_schedule_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this monitoring pipeline will be scheduled to run for the
        #     next round.
        # @!attribute [rw] stats_anomalies_base_directory
        #   @return [::Google::Cloud::AIPlatform::V1::GcsDestination]
        #     Stats anomalies base folder path.
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Customer-managed encryption key spec for a ModelDeploymentMonitoringJob. If
        #     set, this ModelDeploymentMonitoringJob and all sub-resources of this
        #     ModelDeploymentMonitoringJob will be secured by this key.
        # @!attribute [rw] enable_monitoring_pipeline_logs
        #   @return [::Boolean]
        #     If true, the scheduled monitoring pipeline logs are sent to
        #     Google Cloud Logging, including pipeline status and anomalies detected.
        #     Please note the logs incur cost, which are subject to [Cloud Logging
        #     pricing](https://cloud.google.com/logging#pricing).
        # @!attribute [r] error
        #   @return [::Google::Rpc::Status]
        #     Output only. Only populated when the job's state is `JOB_STATE_FAILED` or
        #     `JOB_STATE_CANCELLED`.
        class ModelDeploymentMonitoringJob
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # All metadata of most recent monitoring pipelines.
          # @!attribute [rw] run_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time that most recent monitoring pipelines that is related to this
          #     run.
          # @!attribute [rw] status
          #   @return [::Google::Rpc::Status]
          #     The status of the most recent monitoring pipeline.
          class LatestMonitoringPipelineMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The state to Specify the monitoring pipeline.
          module MonitoringScheduleState
            # Unspecified state.
            MONITORING_SCHEDULE_STATE_UNSPECIFIED = 0

            # The pipeline is picked up and wait to run.
            PENDING = 1

            # The pipeline is offline and will be scheduled for next run.
            OFFLINE = 2

            # The pipeline is running.
            RUNNING = 3
          end
        end

        # ModelDeploymentMonitoringBigQueryTable specifies the BigQuery table name
        # as well as some information of the logs stored in this table.
        # @!attribute [rw] log_source
        #   @return [::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringBigQueryTable::LogSource]
        #     The source of log.
        # @!attribute [rw] log_type
        #   @return [::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringBigQueryTable::LogType]
        #     The type of log.
        # @!attribute [rw] bigquery_table_path
        #   @return [::String]
        #     The created BigQuery table to store logs. Customer could do their own query
        #     & analysis. Format:
        #     `bq://<project_id>.model_deployment_monitoring_<endpoint_id>.<tolower(log_source)>_<tolower(log_type)>`
        class ModelDeploymentMonitoringBigQueryTable
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Indicates where does the log come from.
          module LogSource
            # Unspecified source.
            LOG_SOURCE_UNSPECIFIED = 0

            # Logs coming from Training dataset.
            TRAINING = 1

            # Logs coming from Serving traffic.
            SERVING = 2
          end

          # Indicates what type of traffic does the log belong to.
          module LogType
            # Unspecified type.
            LOG_TYPE_UNSPECIFIED = 0

            # Predict logs.
            PREDICT = 1

            # Explain logs.
            EXPLAIN = 2
          end
        end

        # ModelDeploymentMonitoringObjectiveConfig contains the pair of
        # deployed_model_id to ModelMonitoringObjectiveConfig.
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     The DeployedModel ID of the objective config.
        # @!attribute [rw] objective_config
        #   @return [::Google::Cloud::AIPlatform::V1::ModelMonitoringObjectiveConfig]
        #     The objective config of for the modelmonitoring job of this deployed model.
        class ModelDeploymentMonitoringObjectiveConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The config for scheduling monitoring job.
        # @!attribute [rw] monitor_interval
        #   @return [::Google::Protobuf::Duration]
        #     Required. The model monitoring job scheduling interval. It will be rounded up to next
        #     full hour. This defines how often the monitoring jobs are triggered.
        class ModelDeploymentMonitoringScheduleConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Statistics and anomalies generated by Model Monitoring.
        # @!attribute [rw] objective
        #   @return [::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringObjectiveType]
        #     Model Monitoring Objective those stats and anomalies belonging to.
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     Deployed Model ID.
        # @!attribute [rw] anomaly_count
        #   @return [::Integer]
        #     Number of anomalies within all stats.
        # @!attribute [rw] feature_stats
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ModelMonitoringStatsAnomalies::FeatureHistoricStatsAnomalies>]
        #     A list of historical Stats and Anomalies generated for all Features.
        class ModelMonitoringStatsAnomalies
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Historical Stats (and Anomalies) for a specific Feature.
          # @!attribute [rw] feature_display_name
          #   @return [::String]
          #     Display Name of the Feature.
          # @!attribute [rw] threshold
          #   @return [::Google::Cloud::AIPlatform::V1::ThresholdConfig]
          #     Threshold for anomaly detection.
          # @!attribute [rw] training_stats
          #   @return [::Google::Cloud::AIPlatform::V1::FeatureStatsAnomaly]
          #     Stats calculated for the Training Dataset.
          # @!attribute [rw] prediction_stats
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::FeatureStatsAnomaly>]
          #     A list of historical stats generated by different time window's
          #     Prediction Dataset.
          class FeatureHistoricStatsAnomalies
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The Model Monitoring Objective types.
        module ModelDeploymentMonitoringObjectiveType
          # Default value, should not be set.
          MODEL_DEPLOYMENT_MONITORING_OBJECTIVE_TYPE_UNSPECIFIED = 0

          # Raw feature values' stats to detect skew between Training-Prediction
          # datasets.
          RAW_FEATURE_SKEW = 1

          # Raw feature values' stats to detect drift between Serving-Prediction
          # datasets.
          RAW_FEATURE_DRIFT = 2

          # Feature attribution scores to detect skew between Training-Prediction
          # datasets.
          FEATURE_ATTRIBUTION_SKEW = 3

          # Feature attribution scores to detect skew between Prediction datasets
          # collected within different time windows.
          FEATURE_ATTRIBUTION_DRIFT = 4
        end
      end
    end
  end
end
