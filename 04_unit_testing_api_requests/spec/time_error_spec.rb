require 'time_error'
require 'net/http'

RSpec.describe TimeError do
    it "difference in seconds between server time and computer time" do
        fake_requester = double :requester
        allow(fake_requester).to receive(:get).with(
            URI("https://worldtimeapi.org/api/ip")
            ).and_return('{"abbreviation":"BST","client_ip":"84.70.182.190","datetime":"2023-04-21T16:49:10.076864+01:00","day_of_week":5,"day_of_year":111,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00","dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1682092150,"utc_datetime":"2023-04-21T15:49:10.076864+00:00","utc_offset":"+01:00","week_number":16}')
        time = Time.new(2023, 4, 21, 16, 49, 10)
        
        
        time_error = TimeError.new(fake_requester)
        
        expect(time_error.error(time)).to eq 0.076864
    end
end