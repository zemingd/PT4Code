a,b = gets.split.map(&:to_i)
puts a%2==b%2 ? (b-a)/2+a : 'IMPOSSIBLE'