json.extract! post, :id, :title, :body, :status, :published_date, :author, :home_loan, :savings, :investments, :income, :crypto, :created_at, :updated_at
json.url post_url(post, format: :json)
