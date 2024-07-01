N = gets.to_i
P = gets.split.map &:to_i

count = 0
P.each_cons(3) do |(a,b,c)|
  count += 1 unless [a,b,c].minmax.include? b
end

p count