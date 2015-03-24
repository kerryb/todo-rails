class Item < ActiveRecord::Base
  def self.mark_done id
    update id, done: true
  end

  def to_partial_path
    done? ? "done_item" : "to_do_item"
  end
end
