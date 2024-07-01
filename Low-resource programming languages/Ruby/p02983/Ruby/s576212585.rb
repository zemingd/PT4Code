l, r = gets.chomp.split().map(&:to_i)
ans = 0
if l.div(2019) < r.div(2019)
  ans = 0
elsif l > 2019
  ans = l * (l + 1) % 2019
elsif r < 2019
  ans = r * (r - 1) % 2019
end

p ans 