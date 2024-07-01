s = gets.to_s
t = gets.to_s
u = t.slice(0..-3).to_s
if s == u
puts "Yes" 
else
puts "No"
end