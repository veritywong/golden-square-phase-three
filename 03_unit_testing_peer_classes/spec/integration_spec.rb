# Integration tests
# Unit tests, exercising all of the class's functionality, 
# without using or referring to the other class.
require 'diary'
require 'secret_diary'

RSpec.describe "integration of diary and secret diary" do
    context "reading is or isn't allowed depending on if diary has been locked" do
        it "raises error" do
            diary = Diary.new("secret entry")
            secret_diary = SecretDiary.new(diary) #diary starts off locked
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end

    context "when diary is locked or unlocked" do
        it "returns contents when diary is unlocked" do
            diary = Diary.new("MY CONTENTS")
            secret_diary = SecretDiary.new(diary) #diary starts off locked
            secret_diary.unlock
            expect(secret_diary.read).to eq "MY CONTENTS"
        end

        it "locks contetns and returns fail message" do
            diary = Diary.new("MY CONTENTS")
            secret_diary = SecretDiary.new(diary) #diary starts off locked
            secret_diary.unlock
            secret_diary.lock
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end

end