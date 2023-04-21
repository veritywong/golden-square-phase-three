require 'diary'

RSpec.describe Diary do
    it "reads contents that have been given" do
        diary = Diary.new("entry 1")
        expect(diary.read).to eq "entry 1"
    end
end