# 入力
N,Y = gets.chomp.split(" ").map(&:to_i)
# Y円になる組み合わせを考える
_10000yen = -1
_5000yen = -1
_1000yen = -1

for a in 0..N do
   for b in 0..N - a do
       c = N - (a + b)
       if (10000 * a + 5000 * b + 1000 * c == Y) && (a + b + c == N)
           _10000yen = a
           _5000yen = b
           _1000yen = c
       end
   end
end

puts "#{_10000yen} #{_5000yen} #{_1000yen}"