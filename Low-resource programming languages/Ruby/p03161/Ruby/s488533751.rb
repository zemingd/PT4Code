n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)+[0]
a = [10**18]*(n+2)
a[0] = 0

(n-1).times{|i|
  1.upto(k){|j|
    a[i+j] = a[i]+(h[i]-h[i+j]).abs if i+j < n && a[i+j] > a[i]+(h[i]-h[i+j]).abs
  }
}

p a[n-1]