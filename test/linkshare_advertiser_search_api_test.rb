require "test_helper"

class LinkshareAdvertiserSearchAPITest < Test::Unit::TestCase
  def test_advertiser_search_invalid_token
    LinkshareAPI.token = nil
    assert_raise LinkshareAPI::AuthenticationError do
      LinkshareAPI.advertiser_search
    end
  end

  private

  def token
    "abcdef"
  end

end

