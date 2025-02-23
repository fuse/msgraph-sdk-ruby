require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/managed_mobile_app'
require_relative '../../../device_app_management'
require_relative '../../managed_app_policies'
require_relative '../item'
require_relative './target_apps'

module MicrosoftGraph
    module DeviceAppManagement
        module ManagedAppPolicies
            module Item
                module TargetApps
                    class TargetAppsPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The apps property
                        @apps
                        ## 
                        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Gets the apps property value. The apps property
                        ## @return a managed_mobile_app
                        ## 
                        def apps
                            return @apps
                        end
                        ## 
                        ## Sets the apps property value. The apps property
                        ## @param value Value to set for the apps property.
                        ## @return a void
                        ## 
                        def apps=(value)
                            @apps = value
                        end
                        ## 
                        ## Instantiates a new targetAppsPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a target_apps_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return TargetAppsPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedMobileApp.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("apps", @apps)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
