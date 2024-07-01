n = gets.chomp.to_i
s = gets.chomp
abc_count = 0

while s.include?("ABC")  do
  abc_count +=1
  s.sub!("ABC","")
end
  
puts abc_count