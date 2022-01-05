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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/spanner/admin/instance/v1/version"

require "google/cloud/spanner/admin/instance/v1/instance_admin/credentials"
require "google/cloud/spanner/admin/instance/v1/instance_admin/paths"
require "google/cloud/spanner/admin/instance/v1/instance_admin/operations"
require "google/cloud/spanner/admin/instance/v1/instance_admin/client"

module Google
  module Cloud
    module Spanner
      module Admin
        module Instance
          module V1
            ##
            # Cloud Spanner Instance Admin API
            #
            # The Cloud Spanner Instance Admin API can be used to create, delete,
            # modify and list instances. Instances are dedicated Cloud Spanner serving
            # and storage resources to be used by Cloud Spanner databases.
            #
            # Each instance has a "configuration", which dictates where the
            # serving resources for the Cloud Spanner instance are located (e.g.,
            # US-central, Europe). Configurations are created by Google based on
            # resource availability.
            #
            # Cloud Spanner billing is based on the instances that exist and their
            # sizes. After an instance exists, there are no additional
            # per-database or per-operation charges for use of the instance
            # (though there may be additional network bandwidth charges).
            # Instances offer isolation: problems with databases in one instance
            # will not affect other instances. However, within an instance
            # databases can affect each other. For example, if one database in an
            # instance receives a lot of requests and consumes most of the
            # instance resources, fewer resources are available for other
            # databases in that instance, and their performance may suffer.
            #
            # To load this service and instantiate a client:
            #
            #     require "google/cloud/spanner/admin/instance/v1/instance_admin"
            #     client = ::Google::Cloud::Spanner::Admin::Instance::V1::InstanceAdmin::Client.new
            #
            module InstanceAdmin
            end
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "instance_admin", "helpers.rb"
require "google/cloud/spanner/admin/instance/v1/instance_admin/helpers" if ::File.file? helper_path
