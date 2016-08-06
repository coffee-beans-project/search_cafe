class User < ActiveRecord::Base
    
    has_many :cafes, through: :user_scraps
    has_many :user_scraps
end
