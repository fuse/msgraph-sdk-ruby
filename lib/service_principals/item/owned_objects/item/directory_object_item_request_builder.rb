require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/directory_object'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../service_principals'
require_relative '../../item'
require_relative '../owned_objects'
require_relative './graph_application/graph_application_request_builder'
require_relative './graph_app_role_assignment/graph_app_role_assignment_request_builder'
require_relative './graph_endpoint/graph_endpoint_request_builder'
require_relative './graph_group/graph_group_request_builder'
require_relative './graph_service_principal/graph_service_principal_request_builder'
require_relative './item'

module MicrosoftGraph
    module ServicePrincipals
        module Item
            module OwnedObjects
                module Item
                    ## 
                    # Provides operations to manage the ownedObjects property of the microsoft.graph.servicePrincipal entity.
                    class DirectoryObjectItemRequestBuilder
                        
                        ## 
                        # Casts the previous resource to application.
                        def graph_application()
                            return MicrosoftGraph::ServicePrincipals::Item::OwnedObjects::Item::GraphApplication::GraphApplicationRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to appRoleAssignment.
                        def graph_app_role_assignment()
                            return MicrosoftGraph::ServicePrincipals::Item::OwnedObjects::Item::GraphAppRoleAssignment::GraphAppRoleAssignmentRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to endpoint.
                        def graph_endpoint()
                            return MicrosoftGraph::ServicePrincipals::Item::OwnedObjects::Item::GraphEndpoint::GraphEndpointRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to group.
                        def graph_group()
                            return MicrosoftGraph::ServicePrincipals::Item::OwnedObjects::Item::GraphGroup::GraphGroupRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to servicePrincipal.
                        def graph_service_principal()
                            return MicrosoftGraph::ServicePrincipals::Item::OwnedObjects::Item::GraphServicePrincipal::GraphServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/servicePrincipals/{servicePrincipal%2Did}/ownedObjects/{directoryObject%2Did}{?%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Directory objects that are owned by this service principal. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of directory_object
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Directory objects that are owned by this service principal. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :GET
                            request_info.headers.add('Accept', 'application/json')
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                request_info.add_request_options(request_configuration.options)
                            end
                            return request_info
                        end

                        ## 
                        # Directory objects that are owned by this service principal. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
                        class DirectoryObjectItemRequestBuilderGetQueryParameters
                            
                            ## 
                            # Expand related entities
                            attr_accessor :expand
                            ## 
                            # Select properties to be returned
                            attr_accessor :select
                            ## 
                            ## Maps the query parameters names to their encoded names for the URI template parsing.
                            ## @param originalName The original query parameter name in the class.
                            ## @return a string
                            ## 
                            def get_query_parameter(original_name)
                                raise StandardError, 'original_name cannot be null' if original_name.nil?
                                case original_name
                                    when "expand"
                                        return "%24expand"
                                    when "select"
                                        return "%24select"
                                    else
                                        return original_name
                                end
                            end
                        end

                        ## 
                        # Configuration for the request such as headers, query parameters, and middleware options.
                        class DirectoryObjectItemRequestBuilderGetRequestConfiguration
                            
                            ## 
                            # Request headers
                            attr_accessor :headers
                            ## 
                            # Request options
                            attr_accessor :options
                            ## 
                            # Request query parameters
                            attr_accessor :query_parameters
                        end
                    end
                end
            end
        end
    end
end
