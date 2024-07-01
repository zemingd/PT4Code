s = gets.chomp
s.reverse!
while true do
if s.empty?
    puts "YES"
    break
elsif s.start_with?("maerd")
    s = s.slice(5..-1)
elsif s.start_with?("remaerd")
    s = s.slice(7..-1)
elsif s.start_with?("esare")
    s = s.slice(5..-1)
elsif s.start_with?("resare")
    s = s.slice(6..-1)
else 
    puts "NO"
    break
end
end