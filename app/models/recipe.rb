class Recipe < ApplicationRecord
  belongs_to :user_account

  # Đổi tên thuộc tính hiển thị nếu muốn
  def self.human_attribute_name(attribute, options = {})
    case attribute.to_s
    when 'image_url'
      'Image URL'
    else
      super
    end
  end
end
