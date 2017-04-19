require "wave_client/version"
require 'httparty'

class WaveClient
  include HTTParty
  base_uri 'wave.webaim.org/api/request/'

  # hard set to json for now.
  def initialize(key, url, reporttype = 1)
    @options = { query: { key: key, url: url, format: 'json', reporttype: reporttype } }
    @result = ''
  end

  def request
    return @result if(!@result.empty?)
    @result = JSON.parse(self.class.get("", @options).parsed_response)
  end

  def status
    request['status']
  end

  def statistics
    request['statistics']
  end

  def categories
    request['categories']
  end
end
