class Task < ApplicationRecord
  enum status: {
    undone: 0, done: 1
  }
end
