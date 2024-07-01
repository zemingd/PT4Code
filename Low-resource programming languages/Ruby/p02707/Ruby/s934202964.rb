input1 = gets.chomp.to_i
input2 = gets.chomp.split.map!(&:to_i)
(1..input1).each{ |num|
  puts input2.count(num)
}