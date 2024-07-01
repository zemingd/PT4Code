a,b,c = gets.split.map(&:to_i)
puts (1..b).any?{ |n| n * a % b == c } ? :YES : :NO