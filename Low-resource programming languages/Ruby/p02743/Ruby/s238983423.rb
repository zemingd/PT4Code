a,b,c = gets.chomp.split.map(&:to_i).map{|x| Math.sqrt(x) }

if a + b < c
  puts 'Yes'
else
  puts 'No'
end

