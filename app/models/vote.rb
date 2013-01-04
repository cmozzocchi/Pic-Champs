class Vote < ActiveRecord::Base
  attr_accessible :user_id, :picture_id

  belongs_to :user
  belongs_to :picture, counter_cache: true

  validate :one_vote_per_user

private

  def one_vote_per_user
    if Vote.where(user_id: self.user_id, picture_id: self.picture_id).exists?
      errors.add(:base, 'You can only vote once per photo')
    end
  end

end
