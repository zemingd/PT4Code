a,b,c = gets.split.map(&:to_i)
puts (a .. b).include?(c) ? 'Yes' : 'No'

