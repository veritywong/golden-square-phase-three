require 'diary'

RSpec.describe Diary do
    it "adds and lists diary entries" do
        diary = Diary.new
        fake_diary_entry = FakeDiaryEntry.new
        diary.add(fake_diary_entry)
        expect(diary.entries).to eq [fake_diary_entry]
    end

    it "counts words in entries given" do
        diary = Diary.new
        fake_diary_entry_1 = FakeTwoWordDiaryEntry.new
        fake_diary_entry_2 = FakeThreeWordDiaryEntry.new
        diary.add(fake_diary_entry_1)
        diary.add(fake_diary_entry_2)
        expect(diary.count_words).to eq 5
    end
end

class FakeDiaryEntry
end

class FakeTwoWordDiaryEntry
    def count_words
        2
    end
end

class FakeThreeWordDiaryEntry
    def count_words
        3
    end
end