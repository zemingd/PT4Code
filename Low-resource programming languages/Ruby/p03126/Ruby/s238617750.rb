n, m = gets.chomp.split(" ").map(&:to_i);
a = 0
common = 0
ary1 = gets.chomp.split(" ").map(&:to_i)
k1 = ary1.shift

if n == 1
  puts ary1.count
else
  (n - 1).times do |i|
    ary2 = gets.chomp.split(" ").map(&:to_i);
    kn = ary2.shift
    common = ary1 & ary2
    ary1 = common
  end

  puts common.count
end