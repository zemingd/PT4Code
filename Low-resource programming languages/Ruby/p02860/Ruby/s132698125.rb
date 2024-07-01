n = gets.to_i
s = gets.chomp

result = true
if n.odd?
  result = false
else
  (n/2).times do |i|
    if s[i] != s[i+(n/2)]
      result = false
      break
    end
  end
end

puts result ? "Yes" : "No"