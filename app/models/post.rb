class Post < ApplicationRecord
  include Visible

  after_update :set_published_date
  has_rich_text :body

  def published_date_formatted
    self.published_date.strftime('%d %b %Y')
  end

  private
    def set_published_date
      if saved_change_to_status? &&
         status == "published" && published_date.blank?
        update_column(:published_date, Time.current)
      end
    end
end
