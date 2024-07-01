n = gets.to_i
h = gets.split.map(&:to_i)+[0]
a = [10**18]*(n+2)
a[0] = 0

(n-1).times{|i|
  a[i+2] = a[i]+(h[i]-h[i+2]).abs if a[i+2] > a[i]+(h[i]-h[i+2]).abs
  a[i+1] = a[i]+(h[i]-h[i+1]).abs if a[i+1] > a[i]+(h[i]-h[i+1]).abs
}

p a[n-1]