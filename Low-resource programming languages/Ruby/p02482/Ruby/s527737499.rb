inp = gets.to_s.split(' ')
if (inp[0].to_i < inp[1].to_i)
puts "a < b"
elsif (inp[0].to_i > inp[1].to_i)
puts "b > a"
else
puts "a = b"
end