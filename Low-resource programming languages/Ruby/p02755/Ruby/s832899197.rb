A,B=$<.read.split.map(&:to_i)

n = B*10
(n..n+10).each do |i|
  if (i*0.08) == A
    p i
    exit 0
  end
end

p -1
