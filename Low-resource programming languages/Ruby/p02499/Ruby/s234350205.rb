h = {}
'abcdefghijklmnopqrstuvwxyz'.each_char do |c|
  h[c] = 0
end

s = ""
while true
  l = gets
  exit if l.nil?
  s += l
end

s.downcase.each_char do |c|
  h[c] += 1 if h[c]
end

h.each do |k,v|
  puts "#{k} : #{v}"
end