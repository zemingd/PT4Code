N, L = gets.split(' ').map(&:to_i)
a = []

(1..N).each do |i|
  a << L + i - 1
end

if L >= 0
  sum = a.inject(:+) - a.min
else # L が負
  if N + L > 0 # N のほうが大きい; 0 が含まれる
    sum = a.inject(:+)
  else # L のほうが大きい; 0 は含まれない
    sum = a.inject(:+) - a.max
  end
end

puts sum