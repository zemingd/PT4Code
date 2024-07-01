# AGC027 A
n, x = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort

s = a.inject(:+)

if s == x
  puts n
elsif s < x
  puts n - 1
else
  ss = 0
  n.times do |i|
    ss += a[i]
    if ss > x
      puts i
      exit
    end
  end
end