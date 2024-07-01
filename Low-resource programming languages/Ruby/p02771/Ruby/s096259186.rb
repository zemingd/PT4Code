a,b,c = gets.split(' ').map(&:to_i)
puts (a == b && c != a) || (b == c && a != b) || (a == c && b != a) ? 'Yes' : 'No'
