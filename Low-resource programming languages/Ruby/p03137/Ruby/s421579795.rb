stdin = STDIN.gets
nm = stdin.split(/\s/)
n = nm[0].to_i
m = nm[1].to_i
stdin = STDIN.gets
x = stdin.split(/\s/)

x.map!(&:to_i).sort!

if m == 1 || n >= m
  puts 0
  exit 0
end

if n == 1
  puts x[-1] - x[0]
  exit 0
end

s = 0
e = x.size - 1
r = 0

(0..x.size).each do |_i|
  break if s + 1 >= e

  left = x[s + 1] - x[s]
  right = x[e] - x[e - 1]

  if n > 2
    if left > right
      s = s + 1
    else
      e = e - 1
    end
    n = n - 1
  else
    if left < right
      s = s + 1
      r = r + left
    else
      e = e - 1
      r = r + right
    end
  end
end

puts r
