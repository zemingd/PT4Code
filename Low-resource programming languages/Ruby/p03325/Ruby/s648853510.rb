N = gets.to_i
a = gets.split.map(&:to_i).select(&:even?).inject(:*)
if a.nil?
    puts 0 ; exit
end
count = 0
while a.even?
    count += 1
    a /= 2
end
puts count