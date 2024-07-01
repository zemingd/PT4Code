num = gets.strip.split.map(&:to_i)
strs = gets.strip.to_s

length = num[0]
tgt_num = num[1]

result = ''
strs.each_char.with_index do |str, index|
  result += index.to_i+1 == tgt_num.to_i ? str.downcase : str.upcase
end
puts result