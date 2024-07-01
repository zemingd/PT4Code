A,B=gets.split.map(&:to_i).sort
d=B-A
puts d.odd? ? :IMPOSSIBLE : A+d/2