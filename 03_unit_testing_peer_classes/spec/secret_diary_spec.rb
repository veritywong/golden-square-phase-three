require 'secret_diary'

RSpec.describe SecretDiary do
    context "starts off locked when secret diary initialized" do
        it "raises error" do
            diary = double :diary
            secret_diary = SecretDiary.new(diary) #diary starts off locked
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end
    
    context "when diary is locked or unlocked" do
        it "returns contents when diary is unlocked" do
            diary = double :diary, read: "UNSECRET CONTENTS"
            secret_diary = SecretDiary.new(diary) #diary starts off locked
            secret_diary.unlock
            expect(secret_diary.read).to eq "UNSECRET CONTENTS"
        end

        it "locks contents and returns fail message" do
            diary = double :diary
            secret_diary = SecretDiary.new(diary) #diary starts off locked
            secret_diary.unlock
            secret_diary.lock
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end

end