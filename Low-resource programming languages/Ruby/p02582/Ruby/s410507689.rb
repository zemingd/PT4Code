S = gets.chomp

if S =~ /RRR/
  puts "3"
elsif S =~ /RR/
  puts "2"
elsif S =~ /R/
  puts "1"
else
  puts "0"
end


