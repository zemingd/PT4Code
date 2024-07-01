N,M = readline.chomp.split.map(&:to_i)
as = []
N.times do |i|
  a = readline.chomp.split.map(&:to_i)[1..-1]
  as << a
end

intersection = as[0]
(1..(N-1)).each do |i|
  intersection &= as[i]
end
puts intersection.size
