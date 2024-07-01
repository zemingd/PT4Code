a = 3.times.map do
  gets.split.map &:to_i
end
b = 3.times.map{[false]*3}
gets.times do
  c = gets.to_i
  (0...3).each do |i|
    (0...3).each do |j|
      b[i][j] = true if a[i][j]==c
    end
  end
end
def ok
  puts :Yes
  exit
end

ok() if a[0][0]&&a[0][1]&&a[0][2]
ok() if a[1][0]&&a[1][1]&&a[1][2]
ok() if a[2][0]&&a[2][1]&&a[2][2]
ok() if a[0][0]&&a[1][0]&&a[2][0]
ok() if a[0][1]&&a[1][1]&&a[2][1]
ok() if a[0][2]&&a[1][2]&&a[2][2]
ok() if a[0][0]&&a[1][1]&&a[2][2]
ok() if a[0][2]&&a[1][1]&&a[2][0]

puts :No