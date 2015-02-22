class User < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: true

  attr_accessor :firstname, :lastname

  def full_name
    @fullname = @firstname + " " + @lastname
  end

end
