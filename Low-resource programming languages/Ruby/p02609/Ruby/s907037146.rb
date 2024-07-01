n = gets.to_i
x = gets

def popcount(num)
  num.to_s(2).count('1')
end

(0..n - 1).each do |i|
  target = if x[i] == '0'
             x.dup.tap { |num| num[i] = '1' }.to_i(2)
           elsif x[i] == '1'
             x.dup.tap { |num| num[i] = '0' }.to_i(2)
           end

  cnt = 0
  (0..Float::INFINITY).reduce(target) do |t, _|
    cnt += 1
    ret = t % popcount(t)
    break if ret.zero?

    ret
  end

  puts cnt
end