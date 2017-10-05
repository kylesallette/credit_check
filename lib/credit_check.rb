def luhn_credit_check(numbers)
  sum = 0
  card_number = numbers.to_s.split("")
  card_number.each_with_index do |n , i|

  sum += if (i % 2 == 0)
           n.to_i * 2 > 9 ? n.to_i * 2-9 : n.to_i * 2
         else
           n.to_i
        end
     end
  if (sum % 10) == 0
    puts "The number is valid!"
  else
    puts "The number is invalid!"
  end
end

luhn_credit_check(6011797668867828)
