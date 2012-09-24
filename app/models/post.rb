class Post < ActiveRecord::Base
  attr_accessible :content, :user_id, :name
  attr_accessor :name

  belongs_to :user
  validates_presence_of :content, :name

  default_scope :order => 'id DESC'

  before_create :connect_name_to_user

  def connect_name_to_user
     user = User.find_or_create_by_name self.name
     self.user_id = user.id
  end

end
