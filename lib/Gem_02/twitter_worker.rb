require 'oauth'
require 'json'

module Gem02
  class TwitterWorker
    attr_accessor :token
    attr_accessor :token_secret

    def initialize(token = '996423792-c8MbentBLfu2iLqrxzKvuByuNSLzAZS5vU2METJx', token_secret = 'cXrvnaF74iQUFPoBARHON5DDdwEa8ZQtWM0chznp59k')
      @token = token
      @token_secret = token_secret
    end

    def set_status?(status)
      access_token = create_token
      res = access_token.request(:post, "/1/statuses/update.json", {"Content-Type" => "application/xml", "status" => status})
      return (res.code == "200")
    end

    def get_statuses
      access_token = create_token
      res = access_token.request(:get, "/1/statuses/user_timeline.json", {"Content-Type" => "application/xml"})
      jsonData = JSON.parse(res.body)
      res = []
      jsonData.each do |record|
        res << record["text"]
      end
      return res
    end

    private
      def create_token
        consumer = OAuth::Consumer.new('n9G6ImXv8GrbOYbwyuFQ', 'AmbxIGChKXycBMbPZxecubnUOnKnSG8tksLG5hF7Esk', :site => "http://api.twitter.com", :scheme => :header)
        access_token = OAuth::AccessToken.from_hash(consumer, :oauth_token => @token, :oauth_token_secret => @token_secret)
        return access_token
      end
  end
end
