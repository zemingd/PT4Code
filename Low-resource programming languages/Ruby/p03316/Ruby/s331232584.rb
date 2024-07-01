n = gets.chomp

ni = n.to_i
s = n.chars.map(&:to_i).inject(:+)
puts ni%s==0 ? 'Yes' : 'No'
