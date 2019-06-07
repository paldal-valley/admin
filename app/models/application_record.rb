class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.separate_comma(number) # 금액의 경우 단위수 별로 , 로 나눠줌 (오픈소스참조)
    if number.to_i > 0
      number = number.to_f.floor # 숫자 내림
      whole, decimal = number.to_s.split(".")
      whole_with_commas = whole&.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
      [whole_with_commas, decimal].compact.join(".")
    elsif number.to_i < 0
      number = number.to_f.abs.floor
      whole, decimal = number.to_s.split(".")
      whole_with_commas = whole&.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
      "-" + [whole_with_commas, decimal].compact.join(".")
    else
      return "-"
    end
  end
  
end
