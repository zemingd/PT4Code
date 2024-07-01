io = STDIN
n=io.gets.to_i
ar=n.times.map{io.gets.chomp}

$hash=ar.tally
$hash.default=0
def disp(rst)
  puts "#{rst} x #{$hash[rst]}"
end
disp("AC")
disp("WA")
disp("TLE")
disp("RE")
