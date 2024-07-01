s = gets.chomp('')



t = []
ans = 0

a = ["dream", "dreamer", "erase", "eraser"]

a.each do |i|
  ans = s.gsub(/#{i}/,"")
end

puts ans.empty? ? "Yes": "No"