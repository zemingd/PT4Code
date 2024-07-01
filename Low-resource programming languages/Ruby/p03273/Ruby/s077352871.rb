h, w = gets.chomp.split.map(&:to_i)
ary = []

h.times do
  str = gets.chomp
  if str.length != str.count('.')
    ary.push(str.split(''))
  end
end

ary_t = ary.transpose

# if ary.count == 1
#   ary_ans = []
#   ary_t.each_with_index do |str, i|
#     if str != ["."]
#       ary_ans.push(str)
#     end
#   end
# else
ary_ans_c = []
ary_t.each_with_index do |str, i|
  if str.count != str.count('.')
    ary_ans_c.push(str)
  end
end
ary_ans = ary_ans_c.transpose
# end


ary_ans.each do |str|
  puts str.join('')
end