while line = gets do
  line =~ /(\d+) (.) (\d)/
  a   = $1.to_i
  b   = $3.to_i
  op = $2.to_sym
  a.send(op, b)
end