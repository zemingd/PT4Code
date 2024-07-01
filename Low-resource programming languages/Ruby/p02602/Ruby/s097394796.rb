n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
mul = a[0..k-1].inject(:*)
k.upto(n-1){|i|
  mul_tmp = mul
  mul *= a[i]
  mul /= a[i-k]
  puts mul > mul_tmp ? "Yes" : "No"
}
