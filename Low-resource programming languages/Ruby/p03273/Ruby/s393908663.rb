h, w = gets.split.map(&:to_i)
map = Array.new(h)
h.times do |i|
  map[i] = gets.chomp.chars
end
 
nmap = []
 
map.each do |line|
  nmap << line if line.include?('#')
end
 
map = []
nmap = nmap.transpose
nmap.each do |line|
  map << line if line.include?('#')
end

 nmap = map.transpose
nmap.each do |n|
    puts n.join
end