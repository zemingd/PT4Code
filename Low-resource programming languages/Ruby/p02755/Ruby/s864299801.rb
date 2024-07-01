a,b = gets.chomp.split(" ").map(&:to_i)

(10000+1).times do |i|
  aa = (i * 0.08).floor
  bb = (i * 0.1).floor
  if aa == a && bb == b
    puts i
    exit
  end
end
puts -1
