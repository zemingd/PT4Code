_, m = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
a.uniq!

aa = a.inject { |a1, a2| (a1 / 2).lcm(a2 / 2) }

if a.all? {|x| (aa / x) % 2 == 0 }
  puts 0
else
  puts (m / aa + 1) / 2
end