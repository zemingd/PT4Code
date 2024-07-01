inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

N, K = inputs[0].split(" ").map(&:to_i)
p N, K

cnts = Hash.new

N.times do |i|
  x = i + 1
  cnt = Math.log2(K.to_f/x.to_f).ceil

  if cnt < 1
    cnts[0] ||= 0
    cnts[0] += 1
  else
    cnts[cnt] ||= 0
    cnts[cnt] += 1
  end
end

res = 0
cnts.each do |k, v|
  p [k, v, N]
  if k == 0
    res += v
  else
    res += (1.0/2)**k*v
  end
end

p res / N