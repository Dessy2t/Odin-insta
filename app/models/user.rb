class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         followability
         has_many :posts
         has_many :likes
         has_many :comments
         has_one_attached :avatar
         before_create :randomize_id

    def unfollow(user)
      followerable_relationships.where(followable_id: user.id).destroy_all
    end

         private
         def randomize_id
            begin
              self.id = SecureRandom.random_number(1_000_000_000)
            end while User.where(id: self.id).exists?
          end
end
