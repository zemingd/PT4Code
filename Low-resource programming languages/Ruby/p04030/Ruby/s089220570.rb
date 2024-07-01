s = gets.strip.to_s
result = []
s.length.times do |i|
  if(s[i] == "0" || s[i] == "1") then
    result.push(s[i])
  elsif(s[i] == "B") then
    result.pop
  end
end

result.each {|r|
  print r
}
puts
