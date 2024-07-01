n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

aa = [0]
bb = [0]
a.size.times{|i| aa << a[i] + aa.last }
b.size.times{|i| bb << b[i] + bb.last }

i = 0
j = b.size
mx = 0
while i < aa.size && j >= 0
  if aa[i] + bb[j] <= k
    mx = i+j if mx < i+j

    i += 1
  else
    j -= 1
  end
end


p mx
