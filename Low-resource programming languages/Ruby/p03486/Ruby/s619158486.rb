s = gets.chomp.split("")
t = gets.chomp.split("")

s.sort!
t.sort!.reverse!

ans = false
for i in 0..(t.size - 1) do
  if s[i] && t[i]
    if s[i] < t[i]
      ans = true
    elsif s[i] > t[i]
      ans = false
    end
    break
  elsif !s[i] && t[i]
    ans = true
  end
end

puts ans ? "Yes" : "No"