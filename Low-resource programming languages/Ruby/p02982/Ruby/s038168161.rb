N, D = gets.split.map(&:to_i)

dots = Array.new
N.times do
  dots.push(gets.split.map(&:to_i))
end

def kyori(dot_a, dot_b, d)
  sum = 0
  d.times do |i|
    sum += (dot_a[i] - dot_b[i])**2
  end
  sum ** (1/2.0)
end

count = 0
N.times do |i|
  (i+1..N-1).each do |j|
    k = kyori(dots[i], dots[j], D)
    if k.to_s =~ /^[+-]?[0-9]*[\.]?[0]+$/
      count += 1
    end
  end
end
p count