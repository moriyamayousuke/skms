class LoanDetail < ApplicationRecord

belongs_to :key_master
#validates :, inclusion:{in: [true, false]}
# validate :error_check

# def error_check
  #  if grade.empty?
   #     errors[:base] << "aaaaaaaaaaaaaaa"
   # end
# end



end
