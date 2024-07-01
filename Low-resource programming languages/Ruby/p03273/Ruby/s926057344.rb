h, w = gets.chomp.split.map(&:to_i)
ary = []

h.times do
  str = gets.chomp
  if str.length != str.count('.')
    ary.push(str.split(''))
  end
end

ary_t = ary.transpose
pp ary_t

if ary.count == 1
  ary_ans = []
  ary_t.each_with_index do |str, i|
    if str != ["."]
      ary_ans.push(str)
    end
  end
else
  ary_t.each_with_index do |str, i|
    if str.count == str.count('.')
      ary_t.delete_at(i)
    end
  end
  ary_ans = ary_t.transpose
end




ary_ans.each do |str|
  puts str.join('')
end