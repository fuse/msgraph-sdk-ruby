require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph::Models::CallRecords
    class MediaStream
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Codec name used to encode audio for transmission on the network. Possible values are: unknown, invalid, cn, pcma, pcmu, amrWide, g722, g7221, g7221c, g729, multiChannelAudio, muchv2, opus, satin, satinFullband, rtAudio8, rtAudio16, silk, silkNarrow, silkWide, siren, xmsRTA, unknownFutureValue.
        @audio_codec
        ## 
        # Average Network Mean Opinion Score degradation for stream. Represents how much the network loss and jitter has impacted the quality of received audio.
        @average_audio_degradation
        ## 
        # Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        @average_audio_network_jitter
        ## 
        # Average estimated bandwidth available between two endpoints in bits per second.
        @average_bandwidth_estimate
        ## 
        # Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        @average_jitter
        ## 
        # Average packet loss rate for stream.
        @average_packet_loss_rate
        ## 
        # Ratio of the number of audio frames with samples generated by packet loss concealment to the total number of audio frames.
        @average_ratio_of_concealed_samples
        ## 
        # Average frames per second received for all video streams computed over the duration of the session.
        @average_received_frame_rate
        ## 
        # Average network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        @average_round_trip_time
        ## 
        # Average percentage of video frames lost as displayed to the user.
        @average_video_frame_loss_percentage
        ## 
        # Average frames per second received for a video stream, computed over the duration of the session.
        @average_video_frame_rate
        ## 
        # Average fraction of packets lost, as specified in [RFC 3550][], computed over the duration of the session.
        @average_video_packet_loss_rate
        ## 
        # UTC time when the stream ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @end_date_time
        ## 
        # Fraction of the call where frame rate is less than 7.5 frames per second.
        @low_frame_rate_ratio
        ## 
        # Fraction of the call that the client is running less than 70% expected video processing capability.
        @low_video_processing_capability_ratio
        ## 
        # Maximum of audio network jitter computed over each of the 20 second windows during the session, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        @max_audio_network_jitter
        ## 
        # Maximum jitter for the stream computed as specified in RFC 3550, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        @max_jitter
        ## 
        # Maximum packet loss rate for the stream.
        @max_packet_loss_rate
        ## 
        # Maximum ratio of packets concealed by the healer.
        @max_ratio_of_concealed_samples
        ## 
        # Maximum network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        @max_round_trip_time
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Packet count for the stream.
        @packet_utilization
        ## 
        # Packet loss rate after FEC has been applied aggregated across all video streams and codecs.
        @post_forward_error_correction_packet_loss_rate
        ## 
        # UTC time when the stream started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @start_date_time
        ## 
        # The streamDirection property
        @stream_direction
        ## 
        # Unique identifier for the stream.
        @stream_id
        ## 
        # Codec name used to encode video for transmission on the network. Possible values are: unknown, invalid, av1, h263, h264, h264s, h264uc, h265, rtvc1, rtVideo, xrtvc1, unknownFutureValue.
        @video_codec
        ## 
        # True if the media stream bypassed the Mediation Server and went straight between client and PSTN Gateway/PBX, false otherwise.
        @was_media_bypassed
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
        ## Gets the audioCodec property value. Codec name used to encode audio for transmission on the network. Possible values are: unknown, invalid, cn, pcma, pcmu, amrWide, g722, g7221, g7221c, g729, multiChannelAudio, muchv2, opus, satin, satinFullband, rtAudio8, rtAudio16, silk, silkNarrow, silkWide, siren, xmsRTA, unknownFutureValue.
        ## @return a audio_codec
        ## 
        def audio_codec
            return @audio_codec
        end
        ## 
        ## Sets the audioCodec property value. Codec name used to encode audio for transmission on the network. Possible values are: unknown, invalid, cn, pcma, pcmu, amrWide, g722, g7221, g7221c, g729, multiChannelAudio, muchv2, opus, satin, satinFullband, rtAudio8, rtAudio16, silk, silkNarrow, silkWide, siren, xmsRTA, unknownFutureValue.
        ## @param value Value to set for the audioCodec property.
        ## @return a void
        ## 
        def audio_codec=(value)
            @audio_codec = value
        end
        ## 
        ## Gets the averageAudioDegradation property value. Average Network Mean Opinion Score degradation for stream. Represents how much the network loss and jitter has impacted the quality of received audio.
        ## @return a float
        ## 
        def average_audio_degradation
            return @average_audio_degradation
        end
        ## 
        ## Sets the averageAudioDegradation property value. Average Network Mean Opinion Score degradation for stream. Represents how much the network loss and jitter has impacted the quality of received audio.
        ## @param value Value to set for the averageAudioDegradation property.
        ## @return a void
        ## 
        def average_audio_degradation=(value)
            @average_audio_degradation = value
        end
        ## 
        ## Gets the averageAudioNetworkJitter property value. Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def average_audio_network_jitter
            return @average_audio_network_jitter
        end
        ## 
        ## Sets the averageAudioNetworkJitter property value. Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @param value Value to set for the averageAudioNetworkJitter property.
        ## @return a void
        ## 
        def average_audio_network_jitter=(value)
            @average_audio_network_jitter = value
        end
        ## 
        ## Gets the averageBandwidthEstimate property value. Average estimated bandwidth available between two endpoints in bits per second.
        ## @return a int64
        ## 
        def average_bandwidth_estimate
            return @average_bandwidth_estimate
        end
        ## 
        ## Sets the averageBandwidthEstimate property value. Average estimated bandwidth available between two endpoints in bits per second.
        ## @param value Value to set for the averageBandwidthEstimate property.
        ## @return a void
        ## 
        def average_bandwidth_estimate=(value)
            @average_bandwidth_estimate = value
        end
        ## 
        ## Gets the averageJitter property value. Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def average_jitter
            return @average_jitter
        end
        ## 
        ## Sets the averageJitter property value. Average jitter for the stream computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @param value Value to set for the averageJitter property.
        ## @return a void
        ## 
        def average_jitter=(value)
            @average_jitter = value
        end
        ## 
        ## Gets the averagePacketLossRate property value. Average packet loss rate for stream.
        ## @return a float
        ## 
        def average_packet_loss_rate
            return @average_packet_loss_rate
        end
        ## 
        ## Sets the averagePacketLossRate property value. Average packet loss rate for stream.
        ## @param value Value to set for the averagePacketLossRate property.
        ## @return a void
        ## 
        def average_packet_loss_rate=(value)
            @average_packet_loss_rate = value
        end
        ## 
        ## Gets the averageRatioOfConcealedSamples property value. Ratio of the number of audio frames with samples generated by packet loss concealment to the total number of audio frames.
        ## @return a float
        ## 
        def average_ratio_of_concealed_samples
            return @average_ratio_of_concealed_samples
        end
        ## 
        ## Sets the averageRatioOfConcealedSamples property value. Ratio of the number of audio frames with samples generated by packet loss concealment to the total number of audio frames.
        ## @param value Value to set for the averageRatioOfConcealedSamples property.
        ## @return a void
        ## 
        def average_ratio_of_concealed_samples=(value)
            @average_ratio_of_concealed_samples = value
        end
        ## 
        ## Gets the averageReceivedFrameRate property value. Average frames per second received for all video streams computed over the duration of the session.
        ## @return a float
        ## 
        def average_received_frame_rate
            return @average_received_frame_rate
        end
        ## 
        ## Sets the averageReceivedFrameRate property value. Average frames per second received for all video streams computed over the duration of the session.
        ## @param value Value to set for the averageReceivedFrameRate property.
        ## @return a void
        ## 
        def average_received_frame_rate=(value)
            @average_received_frame_rate = value
        end
        ## 
        ## Gets the averageRoundTripTime property value. Average network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def average_round_trip_time
            return @average_round_trip_time
        end
        ## 
        ## Sets the averageRoundTripTime property value. Average network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @param value Value to set for the averageRoundTripTime property.
        ## @return a void
        ## 
        def average_round_trip_time=(value)
            @average_round_trip_time = value
        end
        ## 
        ## Gets the averageVideoFrameLossPercentage property value. Average percentage of video frames lost as displayed to the user.
        ## @return a float
        ## 
        def average_video_frame_loss_percentage
            return @average_video_frame_loss_percentage
        end
        ## 
        ## Sets the averageVideoFrameLossPercentage property value. Average percentage of video frames lost as displayed to the user.
        ## @param value Value to set for the averageVideoFrameLossPercentage property.
        ## @return a void
        ## 
        def average_video_frame_loss_percentage=(value)
            @average_video_frame_loss_percentage = value
        end
        ## 
        ## Gets the averageVideoFrameRate property value. Average frames per second received for a video stream, computed over the duration of the session.
        ## @return a float
        ## 
        def average_video_frame_rate
            return @average_video_frame_rate
        end
        ## 
        ## Sets the averageVideoFrameRate property value. Average frames per second received for a video stream, computed over the duration of the session.
        ## @param value Value to set for the averageVideoFrameRate property.
        ## @return a void
        ## 
        def average_video_frame_rate=(value)
            @average_video_frame_rate = value
        end
        ## 
        ## Gets the averageVideoPacketLossRate property value. Average fraction of packets lost, as specified in [RFC 3550][], computed over the duration of the session.
        ## @return a float
        ## 
        def average_video_packet_loss_rate
            return @average_video_packet_loss_rate
        end
        ## 
        ## Sets the averageVideoPacketLossRate property value. Average fraction of packets lost, as specified in [RFC 3550][], computed over the duration of the session.
        ## @param value Value to set for the averageVideoPacketLossRate property.
        ## @return a void
        ## 
        def average_video_packet_loss_rate=(value)
            @average_video_packet_loss_rate = value
        end
        ## 
        ## Instantiates a new mediaStream and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a media_stream
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MediaStream.new
        end
        ## 
        ## Gets the endDateTime property value. UTC time when the stream ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def end_date_time
            return @end_date_time
        end
        ## 
        ## Sets the endDateTime property value. UTC time when the stream ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the endDateTime property.
        ## @return a void
        ## 
        def end_date_time=(value)
            @end_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "audioCodec" => lambda {|n| @audio_codec = n.get_enum_value(MicrosoftGraph::Models::CallRecords::AudioCodec) },
                "averageAudioDegradation" => lambda {|n| @average_audio_degradation = n.get_float_value() },
                "averageAudioNetworkJitter" => lambda {|n| @average_audio_network_jitter = n.get_duration_value() },
                "averageBandwidthEstimate" => lambda {|n| @average_bandwidth_estimate = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "averageJitter" => lambda {|n| @average_jitter = n.get_duration_value() },
                "averagePacketLossRate" => lambda {|n| @average_packet_loss_rate = n.get_float_value() },
                "averageRatioOfConcealedSamples" => lambda {|n| @average_ratio_of_concealed_samples = n.get_float_value() },
                "averageReceivedFrameRate" => lambda {|n| @average_received_frame_rate = n.get_float_value() },
                "averageRoundTripTime" => lambda {|n| @average_round_trip_time = n.get_duration_value() },
                "averageVideoFrameLossPercentage" => lambda {|n| @average_video_frame_loss_percentage = n.get_float_value() },
                "averageVideoFrameRate" => lambda {|n| @average_video_frame_rate = n.get_float_value() },
                "averageVideoPacketLossRate" => lambda {|n| @average_video_packet_loss_rate = n.get_float_value() },
                "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                "lowFrameRateRatio" => lambda {|n| @low_frame_rate_ratio = n.get_float_value() },
                "lowVideoProcessingCapabilityRatio" => lambda {|n| @low_video_processing_capability_ratio = n.get_float_value() },
                "maxAudioNetworkJitter" => lambda {|n| @max_audio_network_jitter = n.get_duration_value() },
                "maxJitter" => lambda {|n| @max_jitter = n.get_duration_value() },
                "maxPacketLossRate" => lambda {|n| @max_packet_loss_rate = n.get_float_value() },
                "maxRatioOfConcealedSamples" => lambda {|n| @max_ratio_of_concealed_samples = n.get_float_value() },
                "maxRoundTripTime" => lambda {|n| @max_round_trip_time = n.get_duration_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "packetUtilization" => lambda {|n| @packet_utilization = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "postForwardErrorCorrectionPacketLossRate" => lambda {|n| @post_forward_error_correction_packet_loss_rate = n.get_float_value() },
                "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                "streamDirection" => lambda {|n| @stream_direction = n.get_enum_value(MicrosoftGraph::Models::CallRecords::MediaStreamDirection) },
                "streamId" => lambda {|n| @stream_id = n.get_string_value() },
                "videoCodec" => lambda {|n| @video_codec = n.get_enum_value(MicrosoftGraph::Models::CallRecords::VideoCodec) },
                "wasMediaBypassed" => lambda {|n| @was_media_bypassed = n.get_boolean_value() },
            }
        end
        ## 
        ## Gets the lowFrameRateRatio property value. Fraction of the call where frame rate is less than 7.5 frames per second.
        ## @return a float
        ## 
        def low_frame_rate_ratio
            return @low_frame_rate_ratio
        end
        ## 
        ## Sets the lowFrameRateRatio property value. Fraction of the call where frame rate is less than 7.5 frames per second.
        ## @param value Value to set for the lowFrameRateRatio property.
        ## @return a void
        ## 
        def low_frame_rate_ratio=(value)
            @low_frame_rate_ratio = value
        end
        ## 
        ## Gets the lowVideoProcessingCapabilityRatio property value. Fraction of the call that the client is running less than 70% expected video processing capability.
        ## @return a float
        ## 
        def low_video_processing_capability_ratio
            return @low_video_processing_capability_ratio
        end
        ## 
        ## Sets the lowVideoProcessingCapabilityRatio property value. Fraction of the call that the client is running less than 70% expected video processing capability.
        ## @param value Value to set for the lowVideoProcessingCapabilityRatio property.
        ## @return a void
        ## 
        def low_video_processing_capability_ratio=(value)
            @low_video_processing_capability_ratio = value
        end
        ## 
        ## Gets the maxAudioNetworkJitter property value. Maximum of audio network jitter computed over each of the 20 second windows during the session, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def max_audio_network_jitter
            return @max_audio_network_jitter
        end
        ## 
        ## Sets the maxAudioNetworkJitter property value. Maximum of audio network jitter computed over each of the 20 second windows during the session, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @param value Value to set for the maxAudioNetworkJitter property.
        ## @return a void
        ## 
        def max_audio_network_jitter=(value)
            @max_audio_network_jitter = value
        end
        ## 
        ## Gets the maxJitter property value. Maximum jitter for the stream computed as specified in RFC 3550, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def max_jitter
            return @max_jitter
        end
        ## 
        ## Sets the maxJitter property value. Maximum jitter for the stream computed as specified in RFC 3550, denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @param value Value to set for the maxJitter property.
        ## @return a void
        ## 
        def max_jitter=(value)
            @max_jitter = value
        end
        ## 
        ## Gets the maxPacketLossRate property value. Maximum packet loss rate for the stream.
        ## @return a float
        ## 
        def max_packet_loss_rate
            return @max_packet_loss_rate
        end
        ## 
        ## Sets the maxPacketLossRate property value. Maximum packet loss rate for the stream.
        ## @param value Value to set for the maxPacketLossRate property.
        ## @return a void
        ## 
        def max_packet_loss_rate=(value)
            @max_packet_loss_rate = value
        end
        ## 
        ## Gets the maxRatioOfConcealedSamples property value. Maximum ratio of packets concealed by the healer.
        ## @return a float
        ## 
        def max_ratio_of_concealed_samples
            return @max_ratio_of_concealed_samples
        end
        ## 
        ## Sets the maxRatioOfConcealedSamples property value. Maximum ratio of packets concealed by the healer.
        ## @param value Value to set for the maxRatioOfConcealedSamples property.
        ## @return a void
        ## 
        def max_ratio_of_concealed_samples=(value)
            @max_ratio_of_concealed_samples = value
        end
        ## 
        ## Gets the maxRoundTripTime property value. Maximum network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def max_round_trip_time
            return @max_round_trip_time
        end
        ## 
        ## Sets the maxRoundTripTime property value. Maximum network propagation round-trip time computed as specified in [RFC 3550][], denoted in [ISO 8601][] format. For example, 1 second is denoted as 'PT1S', where 'P' is the duration designator, 'T' is the time designator, and 'S' is the second designator.
        ## @param value Value to set for the maxRoundTripTime property.
        ## @return a void
        ## 
        def max_round_trip_time=(value)
            @max_round_trip_time = value
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the packetUtilization property value. Packet count for the stream.
        ## @return a int64
        ## 
        def packet_utilization
            return @packet_utilization
        end
        ## 
        ## Sets the packetUtilization property value. Packet count for the stream.
        ## @param value Value to set for the packetUtilization property.
        ## @return a void
        ## 
        def packet_utilization=(value)
            @packet_utilization = value
        end
        ## 
        ## Gets the postForwardErrorCorrectionPacketLossRate property value. Packet loss rate after FEC has been applied aggregated across all video streams and codecs.
        ## @return a float
        ## 
        def post_forward_error_correction_packet_loss_rate
            return @post_forward_error_correction_packet_loss_rate
        end
        ## 
        ## Sets the postForwardErrorCorrectionPacketLossRate property value. Packet loss rate after FEC has been applied aggregated across all video streams and codecs.
        ## @param value Value to set for the postForwardErrorCorrectionPacketLossRate property.
        ## @return a void
        ## 
        def post_forward_error_correction_packet_loss_rate=(value)
            @post_forward_error_correction_packet_loss_rate = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("audioCodec", @audio_codec)
            writer.write_float_value("averageAudioDegradation", @average_audio_degradation)
            writer.write_duration_value("averageAudioNetworkJitter", @average_audio_network_jitter)
            writer.write_object_value("averageBandwidthEstimate", @average_bandwidth_estimate)
            writer.write_duration_value("averageJitter", @average_jitter)
            writer.write_float_value("averagePacketLossRate", @average_packet_loss_rate)
            writer.write_float_value("averageRatioOfConcealedSamples", @average_ratio_of_concealed_samples)
            writer.write_float_value("averageReceivedFrameRate", @average_received_frame_rate)
            writer.write_duration_value("averageRoundTripTime", @average_round_trip_time)
            writer.write_float_value("averageVideoFrameLossPercentage", @average_video_frame_loss_percentage)
            writer.write_float_value("averageVideoFrameRate", @average_video_frame_rate)
            writer.write_float_value("averageVideoPacketLossRate", @average_video_packet_loss_rate)
            writer.write_date_time_value("endDateTime", @end_date_time)
            writer.write_float_value("lowFrameRateRatio", @low_frame_rate_ratio)
            writer.write_float_value("lowVideoProcessingCapabilityRatio", @low_video_processing_capability_ratio)
            writer.write_duration_value("maxAudioNetworkJitter", @max_audio_network_jitter)
            writer.write_duration_value("maxJitter", @max_jitter)
            writer.write_float_value("maxPacketLossRate", @max_packet_loss_rate)
            writer.write_float_value("maxRatioOfConcealedSamples", @max_ratio_of_concealed_samples)
            writer.write_duration_value("maxRoundTripTime", @max_round_trip_time)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("packetUtilization", @packet_utilization)
            writer.write_float_value("postForwardErrorCorrectionPacketLossRate", @post_forward_error_correction_packet_loss_rate)
            writer.write_date_time_value("startDateTime", @start_date_time)
            writer.write_enum_value("streamDirection", @stream_direction)
            writer.write_string_value("streamId", @stream_id)
            writer.write_enum_value("videoCodec", @video_codec)
            writer.write_boolean_value("wasMediaBypassed", @was_media_bypassed)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the startDateTime property value. UTC time when the stream started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def start_date_time
            return @start_date_time
        end
        ## 
        ## Sets the startDateTime property value. UTC time when the stream started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the startDateTime property.
        ## @return a void
        ## 
        def start_date_time=(value)
            @start_date_time = value
        end
        ## 
        ## Gets the streamDirection property value. The streamDirection property
        ## @return a media_stream_direction
        ## 
        def stream_direction
            return @stream_direction
        end
        ## 
        ## Sets the streamDirection property value. The streamDirection property
        ## @param value Value to set for the streamDirection property.
        ## @return a void
        ## 
        def stream_direction=(value)
            @stream_direction = value
        end
        ## 
        ## Gets the streamId property value. Unique identifier for the stream.
        ## @return a string
        ## 
        def stream_id
            return @stream_id
        end
        ## 
        ## Sets the streamId property value. Unique identifier for the stream.
        ## @param value Value to set for the streamId property.
        ## @return a void
        ## 
        def stream_id=(value)
            @stream_id = value
        end
        ## 
        ## Gets the videoCodec property value. Codec name used to encode video for transmission on the network. Possible values are: unknown, invalid, av1, h263, h264, h264s, h264uc, h265, rtvc1, rtVideo, xrtvc1, unknownFutureValue.
        ## @return a video_codec
        ## 
        def video_codec
            return @video_codec
        end
        ## 
        ## Sets the videoCodec property value. Codec name used to encode video for transmission on the network. Possible values are: unknown, invalid, av1, h263, h264, h264s, h264uc, h265, rtvc1, rtVideo, xrtvc1, unknownFutureValue.
        ## @param value Value to set for the videoCodec property.
        ## @return a void
        ## 
        def video_codec=(value)
            @video_codec = value
        end
        ## 
        ## Gets the wasMediaBypassed property value. True if the media stream bypassed the Mediation Server and went straight between client and PSTN Gateway/PBX, false otherwise.
        ## @return a boolean
        ## 
        def was_media_bypassed
            return @was_media_bypassed
        end
        ## 
        ## Sets the wasMediaBypassed property value. True if the media stream bypassed the Mediation Server and went straight between client and PSTN Gateway/PBX, false otherwise.
        ## @param value Value to set for the wasMediaBypassed property.
        ## @return a void
        ## 
        def was_media_bypassed=(value)
            @was_media_bypassed = value
        end
    end
end
