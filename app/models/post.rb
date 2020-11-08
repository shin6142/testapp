class Post < ApplicationRecord
    validates :content, {presence: true}
    validates :user_id, {presence: true}
   
    attachment :image

    def user
        return User.find_by(id: self.user_id)
    end
    
end
