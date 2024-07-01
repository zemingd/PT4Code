n = gets.to_i
s = gets.split("")

result = []

n.times do |i|
  result = s.map! do |s|
    if s == "Z"
      s = "A" 
     else
       s.succ
     end
  end
end

if result.empty?
  puts s.join("")
else
  puts result.join("")
end