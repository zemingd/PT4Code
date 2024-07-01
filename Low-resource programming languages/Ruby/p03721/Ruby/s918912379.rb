line = gets
data = line.split(" ")
n = data[0].to_i
k = data[1].to_i
bi = Hash.new
n.times do |i|
  line = gets
  data = line.split(" ")
  a = data[0].to_i
  if bi[a] == nil
    bi[a] = data[1].to_i
  else
    bi[a] += data[1].to_i
  end
end
ai = bi.keys
ai.sort!
ai.each do |a|
  k -= bi[a]
  if k <= 0
    puts a
    break
  end
end