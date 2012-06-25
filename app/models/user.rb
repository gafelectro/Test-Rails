class User < ActiveRecord::Base
  attr_accessible :email, :name, :created_at
end
