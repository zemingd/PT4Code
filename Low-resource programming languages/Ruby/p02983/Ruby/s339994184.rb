l, r = gets.split.map(&:to_i)
array = (l..r).to_a.map do |n|
    n % 2019
end.uniq
puts (array.combination(2).map do |a,b|
  a *b
end).min