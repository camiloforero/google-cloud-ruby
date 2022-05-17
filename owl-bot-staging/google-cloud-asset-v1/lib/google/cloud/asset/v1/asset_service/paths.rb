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
    module Asset
      module V1
        module AssetService
          # Path helper methods for the AssetService API.
          module Paths
            ##
            # Create a fully-qualified Feed resource string.
            #
            # @overload feed_path(project:, feed:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/feeds/{feed}`
            #
            #   @param project [String]
            #   @param feed [String]
            #
            # @overload feed_path(folder:, feed:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/feeds/{feed}`
            #
            #   @param folder [String]
            #   @param feed [String]
            #
            # @overload feed_path(organization:, feed:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/feeds/{feed}`
            #
            #   @param organization [String]
            #   @param feed [String]
            #
            # @return [::String]
            def feed_path **args
              resources = {
                "feed:project" => (proc do |project:, feed:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/feeds/#{feed}"
                end),
                "feed:folder" => (proc do |folder:, feed:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"

                  "folders/#{folder}/feeds/#{feed}"
                end),
                "feed:organization" => (proc do |organization:, feed:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

                  "organizations/#{organization}/feeds/#{feed}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Folder resource string.
            #
            # The resource will be in the following format:
            #
            # `folders/{folder}`
            #
            # @param folder [String]
            #
            # @return [::String]
            def folder_path folder:
              "folders/#{folder}"
            end

            ##
            # Create a fully-qualified Organization resource string.
            #
            # The resource will be in the following format:
            #
            # `organizations/{organization}`
            #
            # @param organization [String]
            #
            # @return [::String]
            def organization_path organization:
              "organizations/#{organization}"
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            ##
            # Create a fully-qualified SavedQuery resource string.
            #
            # @overload saved_query_path(project:, saved_query:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/savedQueries/{saved_query}`
            #
            #   @param project [String]
            #   @param saved_query [String]
            #
            # @overload saved_query_path(folder:, saved_query:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/savedQueries/{saved_query}`
            #
            #   @param folder [String]
            #   @param saved_query [String]
            #
            # @overload saved_query_path(organization:, saved_query:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/savedQueries/{saved_query}`
            #
            #   @param organization [String]
            #   @param saved_query [String]
            #
            # @return [::String]
            def saved_query_path **args
              resources = {
                "project:saved_query" => (proc do |project:, saved_query:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/savedQueries/#{saved_query}"
                end),
                "folder:saved_query" => (proc do |folder:, saved_query:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"

                  "folders/#{folder}/savedQueries/#{saved_query}"
                end),
                "organization:saved_query" => (proc do |organization:, saved_query:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

                  "organizations/#{organization}/savedQueries/#{saved_query}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            extend self
          end
        end
      end
    end
  end
end
