N, Q=gets.split.map(&:to_i)
S=gets.chomp
lrs=Q.times.map { gets.split.map(&:to_i) }

lrs.each do |lr|
  str = S[(lr[0]-1), (lr[1]-1)]
  p str.scan("AC").length
end