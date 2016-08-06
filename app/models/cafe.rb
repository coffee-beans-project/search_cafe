class Cafe < ActiveRecord::Base
    
    has_many :users, through: :user_scraps
    has_many :user_scraps
end
