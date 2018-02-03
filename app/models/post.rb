class Post < ActiveRecord::Base
    validates :title, :body, presence: true
    belongs_to :user
    def length_of_post
        length = self.title.length
        
    count = 0
    numOfWords = 1
    while count <= length
        if self.body[count] == ' '
            numOfWords = numOfWords + 1
        end
        count = count + 1
    end
    
    if numOfWords/250 < 1
        return "Under a Minute"
    else
        return numOfWords/250 + "minutes"
    end
    
    def author
        author = self.author
    end
end
end
