n, m = gets.split(' ').map(&:to_i)
# all = (n+m)*((n+m)-1
even = (n*(n-1))/2+(m*(m-1))/2
puts even
