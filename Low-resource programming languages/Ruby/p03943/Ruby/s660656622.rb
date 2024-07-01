a,b,c = STDIN.gets.split.map{|v| v.to_i}

if ((a + b) == c) || ((a + c) == b) || (a == (b + c)) then
STDOUT.puts "Yes"
else
STDOUT.puts "No"
end