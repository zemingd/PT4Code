_n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i).select(&:even?)
c = 0
tt = proc { |m| m * 3 }
loop do
  break if a.empty?
  t = a.pop
  loop do
    break unless t.even?
    c += 1
    t /= 2
    a.map(&tt)
  end
end

puts c