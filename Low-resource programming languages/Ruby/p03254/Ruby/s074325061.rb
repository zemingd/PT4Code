n, p = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
count = 0
a.sort!

n.times do |i|
    if p >= a[i]
        p -= a[i]
        count += 1
    end
end

if p > 0 && count != 0
  count += 1
end

puts count