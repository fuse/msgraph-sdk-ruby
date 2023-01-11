require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../models/post'
require_relative '../../../../../../groups'
require_relative '../../../../../item'
require_relative '../../../../threads'
require_relative '../../../item'
require_relative '../../posts'
require_relative '../item'
require_relative './attachments/attachments_request_builder'
require_relative './attachments/item/attachment_item_request_builder'
require_relative './extensions/extensions_request_builder'
require_relative './extensions/item/extension_item_request_builder'
require_relative './forward/forward_request_builder'
require_relative './in_reply_to'
require_relative './multi_value_extended_properties/item/multi_value_legacy_extended_property_item_request_builder'
require_relative './multi_value_extended_properties/multi_value_extended_properties_request_builder'
require_relative './reply/reply_request_builder'
require_relative './single_value_extended_properties/item/single_value_legacy_extended_property_item_request_builder'
require_relative './single_value_extended_properties/single_value_extended_properties_request_builder'

module MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo
    ## 
    # Provides operations to manage the inReplyTo property of the microsoft.graph.post entity.
    class InReplyToRequestBuilder
        
        ## 
        # Provides operations to manage the attachments property of the microsoft.graph.post entity.
        def attachments()
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::Attachments::AttachmentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the extensions property of the microsoft.graph.post entity.
        def extensions()
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the forward method.
        def forward()
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::Forward::ForwardRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.post entity.
        def multi_value_extended_properties()
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::MultiValueExtendedProperties::MultiValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to call the reply method.
        def reply()
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::Reply::ReplyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.post entity.
        def single_value_extended_properties()
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::SingleValueExtendedProperties::SingleValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Provides operations to manage the attachments property of the microsoft.graph.post entity.
        ## @param id Unique identifier of the item
        ## @return a attachment_item_request_builder
        ## 
        def attachments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["attachment%2Did"] = id
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::Attachments::Item::AttachmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new InReplyToRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/groups/{group%2Did}/threads/{conversationThread%2Did}/posts/{post%2Did}/inReplyTo{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Provides operations to manage the extensions property of the microsoft.graph.post entity.
        ## @param id Unique identifier of the item
        ## @return a extension_item_request_builder
        ## 
        def extensions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["extension%2Did"] = id
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Read-only. Supports $expand.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of post
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Post.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.post entity.
        ## @param id Unique identifier of the item
        ## @return a multi_value_legacy_extended_property_item_request_builder
        ## 
        def multi_value_extended_properties_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["multiValueLegacyExtendedProperty%2Did"] = id
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::MultiValueExtendedProperties::Item::MultiValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.post entity.
        ## @param id Unique identifier of the item
        ## @return a single_value_legacy_extended_property_item_request_builder
        ## 
        def single_value_extended_properties_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["singleValueLegacyExtendedProperty%2Did"] = id
            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::SingleValueExtendedProperties::Item::SingleValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Read-only. Supports $expand.
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
        # Read-only. Supports $expand.
        class InReplyToRequestBuilderGetQueryParameters
            
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
        class InReplyToRequestBuilderGetRequestConfiguration
            
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
