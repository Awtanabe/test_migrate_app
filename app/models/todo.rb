class Todo < ApplicationRecord
  # belongs_to :user
  enum status: {
    undone: 0, done: 1
  }
end
