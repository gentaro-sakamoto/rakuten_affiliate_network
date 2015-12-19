require "recursive_open_struct"

module LinkshareAPI
  class Response::AdvertiserSearch < LinkshareAPI::Response
    attr_reader :data, :request

    def initialize(response, from)
      @request = response.request
      result = response[LinkshareAPI::RESULT[from]]
      @from = from
      @data = parse(result["midlist"]["merchant"])
    end
  end
end
