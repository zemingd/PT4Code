input = gets
inp = input.strip!.split(" ").map(&:to_i)
buf = Hash.new
inp[0].times do 
  i = gets.strip.split(" ").map(&:to_i)
  if buf.has_key?(i[0]) then
    buf[i[0]].append(i[1])
  else
    buf[i[0]] = [i[1]]
  end
end
buf.default = []
opt = Array.new
sum = 0
inp[1].times do |i|
  opt = opt + buf[i+1]
  sum += opt.max
  opt.delete_at(opt.index(opt.max))
end
p sum