module IntuitIdsAggcat

  module Client

    class ServiceError

      attr_reader :challenge_session_id,
                  :challenge_node_id,
                  :response_code,
                  :response_xml,
                  :error_code,
                  :error_type,
                  :error_message

      def initialize(options = {})
        @challenge_session_id = options[:challenge_session_id]
        @challenge_node_id = options[:challenge_node_id]
        @response_code = options[:response_code]
        @response_xml = options[:response_xml]
        @error_code = options[:error_code]
        @error_type = options[:error_type]
        @error_message = options[:error_message]
      end
      def mfa?
        false
      end
      def error?
        true
      end
    end

  end

end
