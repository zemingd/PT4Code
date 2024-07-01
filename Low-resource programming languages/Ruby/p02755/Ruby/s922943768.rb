A,B=$<.read.split.map(&:to_i)

n = B*10
(n..n+9).each do |i|
  if (i*0.08).floor == A
    p i
    exit 0
  end
end

p(-1)
