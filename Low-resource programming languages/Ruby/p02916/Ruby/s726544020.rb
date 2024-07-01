inputs = readlines

n = inputs[0].to_i
as = inputs[1].split(' ').map(&:to_i)
bs = inputs[2].split(' ').map(&:to_i)
cs = inputs[3].split(' ').map(&:to_i)

pre = nil
satis = 0

(0..n-1).each do |i|
  satis += bs[as[i] - 1]
  satis += if pre && !cs[pre - 1].nil?
    cs[pre - 1]
  else
    0
  end
  pre = as[i]
end

puts satis
