cnt=0
w = gets.chomp
rg = /#{w}/i
loop do
  s = gets.chomp
  break if s =~ /END_OF_TEXT/
  cnt+=1 if s =~ rg
end
puts cnt