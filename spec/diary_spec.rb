require 'diary'

RSpec.describe Diary do
    it "adds and lists diary entires" do
        diary = Diary.new
        fake_diary_entry = FakeDiaryEntry.new
        diary.add(fake_diary_entry)
        expect(diary.entries).to eq [fake_diary_entry]
    end
end

class FakeDiaryEntry

end