require 'date'
require 'json'


class TimeError
  def initialize(requester)
    @requester = requester
  end

  def error(current_time)
    return get_server_time - current_time
  end

  private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

require 'net/http'
time = TimeError.new(Net::HTTP)
p time.error(Time.now)