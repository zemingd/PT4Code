io = STDIN
n=io.gets.to_i
s=io.gets.chomp.split(" ")
if s.uniq.size == 4
  puts 'Four'
else
  puts 'Three'
end
