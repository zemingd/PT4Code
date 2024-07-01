n = gets.to_i
s = gets.chomp.chars
present = s.shift
cnt = 1
s.each do |c|
  if c != present
    cnt += 1
  end
  present = c
end

puts cnt
