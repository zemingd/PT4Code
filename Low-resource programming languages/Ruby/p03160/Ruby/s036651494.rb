N = gets.to_i
h = gets.split(' ').map(&:to_i)
a = [0,(h[1]-h[0]).abs]

(2...N).each do |i|
  one = a[i-1] + (h[i]-h[i-1]).abs
  two = a[i-2] + (h[i]-h[i-2]).abs
  a[i] = [one,two].min
end
print a[N-1]