# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/machine_resources.proto

require 'google/api/field_behavior_pb'
require 'google/cloud/aiplatform/v1/accelerator_type_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/machine_resources.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.MachineSpec" do
      optional :machine_type, :string, 1
      optional :accelerator_type, :enum, 2, "google.cloud.aiplatform.v1.AcceleratorType"
      optional :accelerator_count, :int32, 3
    end
    add_message "google.cloud.aiplatform.v1.DedicatedResources" do
      optional :machine_spec, :message, 1, "google.cloud.aiplatform.v1.MachineSpec"
      optional :min_replica_count, :int32, 2
      optional :max_replica_count, :int32, 3
      repeated :autoscaling_metric_specs, :message, 4, "google.cloud.aiplatform.v1.AutoscalingMetricSpec"
    end
    add_message "google.cloud.aiplatform.v1.AutomaticResources" do
      optional :min_replica_count, :int32, 1
      optional :max_replica_count, :int32, 2
    end
    add_message "google.cloud.aiplatform.v1.BatchDedicatedResources" do
      optional :machine_spec, :message, 1, "google.cloud.aiplatform.v1.MachineSpec"
      optional :starting_replica_count, :int32, 2
      optional :max_replica_count, :int32, 3
    end
    add_message "google.cloud.aiplatform.v1.ResourcesConsumed" do
      optional :replica_hours, :double, 1
    end
    add_message "google.cloud.aiplatform.v1.DiskSpec" do
      optional :boot_disk_type, :string, 1
      optional :boot_disk_size_gb, :int32, 2
    end
    add_message "google.cloud.aiplatform.v1.NfsMount" do
      optional :server, :string, 1
      optional :path, :string, 2
      optional :mount_point, :string, 3
    end
    add_message "google.cloud.aiplatform.v1.AutoscalingMetricSpec" do
      optional :metric_name, :string, 1
      optional :target, :int32, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        MachineSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MachineSpec").msgclass
        DedicatedResources = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DedicatedResources").msgclass
        AutomaticResources = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.AutomaticResources").msgclass
        BatchDedicatedResources = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchDedicatedResources").msgclass
        ResourcesConsumed = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ResourcesConsumed").msgclass
        DiskSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DiskSpec").msgclass
        NfsMount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NfsMount").msgclass
        AutoscalingMetricSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.AutoscalingMetricSpec").msgclass
      end
    end
  end
end
