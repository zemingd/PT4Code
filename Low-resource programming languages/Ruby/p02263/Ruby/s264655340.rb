memo = []

chars = gets.split
chars.each do |c|
  case c
  when '+', '-', '*', '/'
    nums = memo.pop(2)
    memo << eval("#{nums[0]}#{c}#{nums[1]}")
  else
    memo << c.to_i
  end
end

puts memo