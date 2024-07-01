X = gets.chomp.to_i

list = []

if X == 1 then
  puts "1"
  exit
end

(2..(Math.sqrt(X).to_i)).each do |n|
  (2..Float::INFINITY).each do |e|
    break if n ** e > X
    list << n ** e
  end
end

puts list.max