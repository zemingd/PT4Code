x = gets.to_i
a = 1
if x == 1
  puts "1 0"
  exit
end

loop do
  s = (-Float::INFINITY..Float::INFINITY).bsearch{|b| x - (a**5) >= -(b**5)}
  unless s.nil?
    puts "#{a} #{s.to_i}"
    exit
  end
  a += 1
end
