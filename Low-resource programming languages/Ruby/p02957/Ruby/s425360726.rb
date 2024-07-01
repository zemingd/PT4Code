a=gets.split.map(&:to_i).inject(:+)
puts a%2==0? a/2 : 'IMPOSSIBLE'