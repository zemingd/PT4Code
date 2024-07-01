#s = gets.chomp
n = gets.chomp

flag=0
n.chars.each do |c|
  if c=='7' then
    flag=1
  end
end
if flag==1 
  puts "Yes"
else
  puts "No"
end