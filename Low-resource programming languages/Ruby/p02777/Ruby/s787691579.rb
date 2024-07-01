s,t=gets.split
a,b=gets.split.map(&:to_i)
if s==gets
  puts "#{a-1} #{b}"
else
  puts "#{a} #{b-1}"
end