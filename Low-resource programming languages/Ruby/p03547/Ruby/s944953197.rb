A, B= gets.split.map &:hex
if A>B
  puts ">"
elsif A<B
  puts "<"
else
  puts "="
end