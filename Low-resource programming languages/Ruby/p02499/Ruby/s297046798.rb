h = {}
'abcdefghijklmnopqrstuvwxyz'.each_char do |c|
  h[c] = 0
end

s = gets.chomp
s.downcase.each_char do |c|
  h[c] += 1 if h[c]
end

h.each do |k,v|
  puts "#{k} : #{v}"
end