json.extract! loan_detail, :id, :key_id, :start_date, :return_date, :grade, :class_number, :user_name, :created_at, :updated_at
json.url loan_detail_url(loan_detail, format: :json)
