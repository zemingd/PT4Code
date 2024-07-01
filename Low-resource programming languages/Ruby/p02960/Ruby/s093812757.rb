@s = gets.chomp.to_s
@s_array = @s.split('')
@digit = @s_array.size
max_value = @s.gsub('?', "9").to_i

max_cnt = (max_value - 5)/13

# puts max_value
# puts max_cnt


# @return Boolean
def valid?(str)
  n_array = str.split('')
  @s_array.each_with_index do |s, i|
    next if s == '?'
    return false if s != n_array[i]
  end
  true
end

@cnt = 0
1.upto(max_cnt) do |i|
  target_number = (i*13+5)
  target_digit = target_number.to_s.length
  diff_digit = @digit - target_digit
  target_str = "0"*diff_digit + target_number.to_s
  @cnt += 1 if valid?(target_str)
end

puts @cnt % ((10**9)+7)
