n = gets.to_i
strs = []
n.times { strs << gets.chomp }

checks = []
strs.each do |str|
  checks << str.chars.group_by { |s| s[0].chr }.values
end

count = -n
checks.each do |check1|
  checks.each do |check2|
    count += 1 if check1.all? { |c1| check2.include?(c1) }
  end
end

puts count/2