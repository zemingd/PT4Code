f = gets.chomp.split
s = []
f.each do |t|
  if t =~ /\d+/
    s.push t.to_i
  else
    s.push [s.pop, s.pop].reverse.inject(t.to_sym)
  end
end
p s.pop
