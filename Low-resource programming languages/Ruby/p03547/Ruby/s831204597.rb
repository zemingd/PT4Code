def hex_num(str)
  return str.to_i(16)
end
input_array = gets.chomp.split(' ')
result_ar = []
input_array.each do |ar|
  result_ar << hex_num(ar)
end

puts  result_ar[0] == result_ar[1] ? '=' :
      result_ar[0] > result_ar[1] ? '>' :
      '<'