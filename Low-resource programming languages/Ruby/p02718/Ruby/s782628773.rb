n, m = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
sorted_a = a.sort.reverse
sum = a.inject(0) { |s, a_i| s + a_i }
print(sorted_a[m - 1] < (sum / (4 * m)) ? 'No' : 'Yes')
