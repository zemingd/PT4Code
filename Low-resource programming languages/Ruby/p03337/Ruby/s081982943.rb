a=gets.split.map(&:to_i)
p [a.inject(:+),a.inject(:*),a.inject(:-)].max