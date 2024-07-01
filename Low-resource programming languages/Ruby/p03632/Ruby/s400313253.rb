A,B,C,D = gets.split.map(&:to_i)
if B <= C || D <= A
  p 0
else
  p [B,D].min - [A,C].max
end
