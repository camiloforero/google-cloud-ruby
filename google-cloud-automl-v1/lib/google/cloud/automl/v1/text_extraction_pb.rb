# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/text_extraction.proto

require 'google/api/annotations_pb'
require 'google/cloud/automl/v1/text_segment_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1/text_extraction.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1.TextExtractionAnnotation" do
      optional :score, :float, 1
      oneof :annotation do
        optional :text_segment, :message, 3, "google.cloud.automl.v1.TextSegment"
      end
    end
    add_message "google.cloud.automl.v1.TextExtractionEvaluationMetrics" do
      optional :au_prc, :float, 1
      repeated :confidence_metrics_entries, :message, 2, "google.cloud.automl.v1.TextExtractionEvaluationMetrics.ConfidenceMetricsEntry"
    end
    add_message "google.cloud.automl.v1.TextExtractionEvaluationMetrics.ConfidenceMetricsEntry" do
      optional :confidence_threshold, :float, 1
      optional :recall, :float, 3
      optional :precision, :float, 4
      optional :f1_score, :float, 5
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1
        TextExtractionAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextExtractionAnnotation").msgclass
        TextExtractionEvaluationMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextExtractionEvaluationMetrics").msgclass
        TextExtractionEvaluationMetrics::ConfidenceMetricsEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextExtractionEvaluationMetrics.ConfidenceMetricsEntry").msgclass
      end
    end
  end
end
