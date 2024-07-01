N = gets.to_i
A = gets.strip.split.map(&:to_i)
a = []

for i in 0..N-1
    a[i] = A[i]-i-1 
end

b = (a.inject(:+) / N)
c = (a.inject(:+) / N)+1
answer_1 = 0
answer_2 = 0

for i in 0..N-1
    answer_1 += (a[i]-b).abs 
    answer_2 += (a[i]-c).abs 
end

puts [answer_1,answer_2].min 