n = gets.to_i
s = gets.to_s
count = 0

loop do
  if s.scan(/\#\./).size == 0
    break
  else
    s.sub!(/\#\./, "##")
  end
  count += 1
end

puts count