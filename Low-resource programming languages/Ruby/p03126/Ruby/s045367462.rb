n, m = gets.chomp.split(" ").map(&:to_i)
c = {}

n.times do
  gets.chomp.split(" ").drop(1).map(&:to_i).each do |f|
    c[f] ||= 0
    c[f] += 1
  end
end

ans = 0
c.each {|_, v| ans += 1 if v == n }

puts ans
