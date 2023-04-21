#  REFACTORING OPTIONS: 3 ways of writing classes

# 1 
DiaryEntry = Struct.new(:title, :contents)

# 2 can add more methods into this way 
class DiaryEntry < Struct.new(:title, :contents)
end

# 3 long familiar way
class diary_entry
    def initalize(title, contents)
        @title = title
        @contents = contents
    end

    def title
        return title
    end

    def contents
        return contents
    end
end