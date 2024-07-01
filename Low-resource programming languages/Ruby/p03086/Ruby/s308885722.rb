a = gets.chomp.scan(/[ACGT]+/)
if a.empty?
  puts 0
else
  puts a.max{|a,b|a.size<=>b.size}.size
end