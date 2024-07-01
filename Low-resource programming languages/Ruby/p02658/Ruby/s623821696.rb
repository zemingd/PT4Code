n = gets.chomp.split("")
ans=1
gets.chomp.split(" ").each do |v|
  ans*=v.to_i
end
if ans > 10**18
  puts -1
else
  puts ans
end