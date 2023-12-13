module KeyMastersHelper
  def rent_flg(loan_detail)
    return true if loan_detail.blank?
    if loan_detail.start_date.present? && loan_detail.return_date.blank?
      return false
    end
    return true
  end

  def rent(loan_details)
    loan_detail = loan_details.last
    if rent_flg(loan_detail)
      return "貸出可能"
    else
      return "貸出不可"
    end
  end
end
