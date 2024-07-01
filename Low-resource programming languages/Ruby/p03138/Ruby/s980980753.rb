require 'pp'
N,K = readline.chomp.split.map(&:to_i)
ai = readline.chomp.split.map(&:to_i)
if K == 0
  puts ai.inject(:+)
  exit
end

nbit = Math.log2(K).floor+1
bits = Array.new(nbit)
nhalf = N.to_f / 2
nbit.times do |b|
  mask = 2**b
  n1 = ai.map {|a| a&mask }.count {|x| x > 0 }
  if n1 > nhalf
    bits[b] = 0
  elsif n1 < nhalf
    bits[b] = 1
  elsif n1 == N/2
    bits[b] = 0
  end
end

def to_x(bs)
  x = 0
  bs.each_with_index do |b,i|
    x += 2**i*b
  end
  x
end

x = to_x(bits)
if x > K
  nbit.times do |b|
    b1 = (nbit-b-1)
    mask = 2**b1
    if K&mask==0 and x&mask > 0
      x = x^mask
    end
    break if x <= K
  end
end
# pp x
puts ai.map {|a| a ^ x }.inject(:+)

