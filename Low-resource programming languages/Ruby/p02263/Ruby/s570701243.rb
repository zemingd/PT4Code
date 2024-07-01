memo = []

chars = gets.split
chars.each do |c|
  if c =~ /[0-9]/
    memo << c.to_i
  else
    nums = memo.pop(2)
    memo << eval("#{nums[0]}#{c}#{nums[1]}")
  end
end

puts memo