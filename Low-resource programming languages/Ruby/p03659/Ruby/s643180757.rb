N = gets.to_i
A = gets.split(' ').map(&:to_i)

def calc(i)
  (A[0...i].inject(0, :+) - A[i...N].inject(0, :+)).abs
end

sub = (1...N).to_a

loop do
  n = sub.size
  break if n === 1
  sub1, sub2 = sub[n % 2 == 0 ? 0...(n / 2) : 0..(n / 2)], sub[(n / 2)...n]
  sub = (calc(sub1[sub1.size / 2]) < calc(sub2[sub2.size / 2]) ? sub1 : sub2)
end

puts calc(sub[0])
