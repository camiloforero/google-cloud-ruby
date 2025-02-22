# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/explanation_metadata.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/struct_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/explanation_metadata.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.ExplanationMetadata" do
      map :inputs, :string, :message, 1, "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata"
      map :outputs, :string, :message, 2, "google.cloud.aiplatform.v1.ExplanationMetadata.OutputMetadata"
      optional :feature_attributions_schema_uri, :string, 3
    end
    add_message "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata" do
      repeated :input_baselines, :message, 1, "google.protobuf.Value"
      optional :input_tensor_name, :string, 2
      optional :encoding, :enum, 3, "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Encoding"
      optional :modality, :string, 4
      optional :feature_value_domain, :message, 5, "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.FeatureValueDomain"
      optional :indices_tensor_name, :string, 6
      optional :dense_shape_tensor_name, :string, 7
      repeated :index_feature_mapping, :string, 8
      optional :encoded_tensor_name, :string, 9
      repeated :encoded_baselines, :message, 10, "google.protobuf.Value"
      optional :visualization, :message, 11, "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization"
      optional :group_name, :string, 12
    end
    add_message "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.FeatureValueDomain" do
      optional :min_value, :float, 1
      optional :max_value, :float, 2
      optional :original_mean, :float, 3
      optional :original_stddev, :float, 4
    end
    add_message "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization" do
      optional :type, :enum, 1, "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.Type"
      optional :polarity, :enum, 2, "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.Polarity"
      optional :color_map, :enum, 3, "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.ColorMap"
      optional :clip_percent_upperbound, :float, 4
      optional :clip_percent_lowerbound, :float, 5
      optional :overlay_type, :enum, 6, "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.OverlayType"
    end
    add_enum "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :PIXELS, 1
      value :OUTLINES, 2
    end
    add_enum "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.Polarity" do
      value :POLARITY_UNSPECIFIED, 0
      value :POSITIVE, 1
      value :NEGATIVE, 2
      value :BOTH, 3
    end
    add_enum "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.ColorMap" do
      value :COLOR_MAP_UNSPECIFIED, 0
      value :PINK_GREEN, 1
      value :VIRIDIS, 2
      value :RED, 3
      value :GREEN, 4
      value :RED_GREEN, 6
      value :PINK_WHITE_GREEN, 5
    end
    add_enum "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.OverlayType" do
      value :OVERLAY_TYPE_UNSPECIFIED, 0
      value :NONE, 1
      value :ORIGINAL, 2
      value :GRAYSCALE, 3
      value :MASK_BLACK, 4
    end
    add_enum "google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Encoding" do
      value :ENCODING_UNSPECIFIED, 0
      value :IDENTITY, 1
      value :BAG_OF_FEATURES, 2
      value :BAG_OF_FEATURES_SPARSE, 3
      value :INDICATOR, 4
      value :COMBINED_EMBEDDING, 5
      value :CONCAT_EMBEDDING, 6
    end
    add_message "google.cloud.aiplatform.v1.ExplanationMetadata.OutputMetadata" do
      optional :output_tensor_name, :string, 3
      oneof :display_name_mapping do
        optional :index_display_name_mapping, :message, 1, "google.protobuf.Value"
        optional :display_name_mapping_key, :string, 2
      end
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        ExplanationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata").msgclass
        ExplanationMetadata::InputMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata").msgclass
        ExplanationMetadata::InputMetadata::FeatureValueDomain = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.FeatureValueDomain").msgclass
        ExplanationMetadata::InputMetadata::Visualization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization").msgclass
        ExplanationMetadata::InputMetadata::Visualization::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.Type").enummodule
        ExplanationMetadata::InputMetadata::Visualization::Polarity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.Polarity").enummodule
        ExplanationMetadata::InputMetadata::Visualization::ColorMap = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.ColorMap").enummodule
        ExplanationMetadata::InputMetadata::Visualization::OverlayType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Visualization.OverlayType").enummodule
        ExplanationMetadata::InputMetadata::Encoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata.Encoding").enummodule
        ExplanationMetadata::OutputMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadata.OutputMetadata").msgclass
      end
    end
  end
end
