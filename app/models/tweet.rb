# frozen_string_literal: true

class Tweet < ApplicationRecord
  after_create_commit { broadcast_prepend_to :tweets }
  after_update_commit { broadcast_replace_to :tweets }
  after_destroy_commit { broadcast_remove_to :tweets }

  enum status: {
    privates: 0,
    publics: 1
  }

  belongs_to :user

  validates_presence_of :body, :status, :user_id
end
