require 'pry'

card = 4929735477250543
nums = card.to_s.split('')

nums_int = nums.map do |num|
    num.to_i
end

val1 = nums_int[1]
val3 = nums_int[3]
val5 = nums_int[5]
val7 = nums_int[7]
val9 = nums_int[9]
val11 = nums_int[11]
val13 = nums_int[13]

odd_positions = [val1, val3, val5, val7, val9, val11, val13]

doubled = odd_positions.map do  |num|
    num * 2
end

sum_doubled = doubled.map do |num|
    if num >= 10
        num-9
    else
        num
    end
end

sum_doubled.inspect

val0 = nums_int[0]
val2 = nums_int[2]
val4 = nums_int[4]
val6 = nums_int[6]
val8 = nums_int[8]
val10 = nums_int[10]
val12 = nums_int[12]
val14 = nums_int[14]

even_positions = [val0, val2, val4, val6, val8, val10, val12, val14]

even_positions.inspect

sum_even = even_positions.inject(:+)

sum_odds = sum_doubled.inject(:+)

total_sum = sum_even + sum_odds

if total_sum % 2 == 0
    puts "The number is valid!"
else
    puts "The number is invalid!"
end




