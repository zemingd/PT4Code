n, y = gets.split(" ").map(&:to_i)

if y > n * 10000 || y < n * 1000
  puts "-1 -1 -1"
  exit
end
