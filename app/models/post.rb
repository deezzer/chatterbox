class Post < ActiveRecord::Base
  attr_accessible :body, :user_id, :poster
  attr_accessor :poster

  belongs_to :user
  validates_presence_of :body, :poster

  default_scope :order => 'id DESC'

  before_create :connect_name_to_user

  def connect_name_to_user
     user = User.find_or_create_by_name self.poster
     self.user_id = user.id
  end

end
