n = gets.to_i
s = gets.chomp
h = n/2

/(^.{h})(.+$)/ =~ s
if n.odd?
  puts "No"
elsif $1 == $2
  puts "Yes"
else
  puts "No"
end