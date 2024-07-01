a=gets.split.map(&:to_i).inject &:+
p a/2+(a.odd?? 1:0)