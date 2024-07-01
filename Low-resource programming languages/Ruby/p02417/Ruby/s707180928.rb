k = ('a'..'z').to_a
v = Array.new(26, 0)
h = {}
k.zip(v).each{|kk, vv| h[kk] = vv}
while line = gets
  line.chomp.split('').each do |c|
    next if c == ' '
    next if c == '.'
    c.downcase!
    h[c] += 1
  end
end
h.each do |key, val|
  print "#{key} : #{val}\n"
end