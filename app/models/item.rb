class Item < ActiveRecord::Base
  def self.mark_done id
    update id, done: true
  end
end
