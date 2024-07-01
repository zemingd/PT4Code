n = gets.chomp.to_i(10)

obj = {}
prev = ""
for i in 0...n do
  s = gets.chomp
  if (i > 0 && s[0] != prev[-1]) || obj[s] then
    puts "No"
    break
  end
  obj[s] = true
  prev = s
    
  if i == n - 1 then
    puts "Yes"
  end
end
