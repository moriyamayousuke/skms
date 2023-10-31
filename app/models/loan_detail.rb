class LoanDetail < ApplicationRecord

belongs_to :key_master
# validate :error_check

# def error_check
#     if grade.to_i < 1 || 3 < grade.to_i
#         errors[:base] << "うおおおおおおおおおお"
#     end
# end



end
