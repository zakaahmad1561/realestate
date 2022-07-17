class Article < ApplicationRecord
    has_many :attachments, as: :attachable, dependent: :destroy
    accepts_nested_attributes_for :attachments, reject_if: ->(attributes){ attributes['files'].blank? }, allow_destroy: true
end
