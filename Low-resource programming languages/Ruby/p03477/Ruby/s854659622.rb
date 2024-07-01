A,B,C,D=gets.split.map(&:to_i)
puts ["Balanced","Left","Right"][A+B<=>C+D]
