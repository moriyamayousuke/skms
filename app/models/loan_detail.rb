class LoanDetail < ApplicationRecord

belongs_to :key_master
#validates :, inclusion:{in: [true, false]}
validate :error_check

def error_check
   if user_name.empty?
       errors[:base] << "名前を入力してください"
   end
end
# validates :user_name, presence: true


end
