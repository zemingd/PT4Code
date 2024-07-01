a, b = gets.chomp.split(' ').map{|v| v.to_i}

if (a+b).odd?
  puts 'IMPOSSIBLE'
else
  puts (a+b)/2
end