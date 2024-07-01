n,a,b=gets.split.map(&:to_i)
if(b<=a*n)
  puts "#{b}"
elsif(b>a*n)
  puts "#{a*n}"
end