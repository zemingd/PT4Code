s = gets.chomp.split("")
arr = Array.new()
s.size.times do |i|
  if s[i] == "0"
    arr.push("0")
  elsif s[i] == "1"
    arr.push("1")
  else
    arr.delete_at(-1)
  end
end
ans = arr.join("")
puts ans
