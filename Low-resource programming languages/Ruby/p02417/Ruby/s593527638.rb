key = [*'a'..'z']
value = Array.new(key.size, 0)
ary = [key,value].transpose
h = Hash[*ary.flatten]
sentences = []
while line = gets
  sentences.push line.chomp.downcase!.split("")
end
sentences.flatten!
sentences.each do |s|
  h[s] += 1 if h.has_key?(s)
end
h.each do |i, j|
  puts "#{i} : #{j}"
end