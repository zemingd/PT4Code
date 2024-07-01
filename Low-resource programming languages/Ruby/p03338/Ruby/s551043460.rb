n = gets.to_i
s = gets.chomp

count = 0
n.times do |i|
  break if s[i+1].nil?
  tmp_count = 0
  left = s[0..i]
  right = s[i+1..-1]
  left.chars.uniq.each do |c|
    tmp_count += 1 if right.include?(c)
  end
  count = [count, tmp_count].max
end

puts count