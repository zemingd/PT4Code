min, max, v=gets.split(' ').map(&:to_i)
puts (min..max).to_a.find_all{|i|v%i==0}.size