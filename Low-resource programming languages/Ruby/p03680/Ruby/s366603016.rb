n = gets.chomp.to_i
$button = []
$num = 0
n.times do |i|
  input = gets.chomp.to_i
  $button << input
  $num += input - (i+1) if i!=1
end

if $num < 0
  puts "-1"
  exit
end

puts $button.uniq.size - $num
