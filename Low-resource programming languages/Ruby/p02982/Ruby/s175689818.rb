n, d = gets.split(' ').map(&:to_i)
lr = []
output = 0

def hoge(l, r)
  sum = 0
  for i in 0..(l.length-1)
    sum += (l[i] - r[i]) ** 2
  end
  (sum ** 0.5).denominator == 1
end

for i in 0..(n-1)
  lr << gets.split(' ').map(&:to_i)
end

  for i in 0..(n-1)
    for j in (i+1)..(n-1)
      output = output + 1 if hoge(lr[i], lr[j])
    end
  end

puts output
