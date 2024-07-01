s = gets.chomp

ans = ""

s.each_char do |c|
  if c == 'B'
    ans.chop! unless ans.empty?
  else
    ans << c
  end
end

puts ans
