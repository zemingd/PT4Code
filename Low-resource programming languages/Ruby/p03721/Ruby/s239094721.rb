line = gets
data = line.split(" ")
n = data[0].to_i
k = data[1].to_i
ai = Array.new
bi = Hash.new
n.times do |i|
  line = gets
  data = line.split(" ")
  a = data[0].to_i
  ai << a if !ai.include?(a)
  if bi[a] == nil
    bi[a] = data[1].to_i
  else
    bi[a] += data[1].to_i
  end
end
ai.sort!
ai.each do |a|
  k -= bi[a]
  if k <= 0
    puts a
    break
  end
end