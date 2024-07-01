X,A,B=gets.split.map &:to_i
d=B-A
if 0>=d
  puts "delicious"
elsif X>=d
  puts "safe"
else
  puts "dangerous"
end