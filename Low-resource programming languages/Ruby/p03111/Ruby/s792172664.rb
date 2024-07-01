N,A,B,C = gets.split.map(&:to_i)
ls = N.times.map{ gets.to_i }

def merge(main, joins)
  if joins.empty?
    sorted = main.sort
    (sorted[0]-C).abs + (sorted[1]-B).abs + (sorted[2]-A).abs
  else
    joins_dup = joins.dup
    current = joins_dup.pop
    scores = [
      merge([main[0],main[1],main[2]], joins_dup),
      merge([main[0]+current,main[1],main[2]], joins_dup) +10,
      merge([main[0],main[1]+current,main[2]], joins_dup) +10,
      merge([main[0],main[1],main[2]+current], joins_dup) +10
    ]
    scores.min
  end
end

min = 100000000000000000
N.times.map{|i| i}.combination(3) do |a,b,c|
  joins = ls.dup
  main = [joins.delete_at(c), joins.delete_at(b), joins.delete_at(a)]
  mp = merge(main, joins)
  min = [min, mp].min
end
puts min
