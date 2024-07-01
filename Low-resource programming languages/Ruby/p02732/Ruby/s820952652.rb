class Integer
  def !
    res = 1
    2.upto(self) do |i|
      res *= i
    end
    res
  end
end

n = $stdin.gets.to_i
a = $stdin.read.split.map(&:to_i)
h = Array.new(n+1, 0)
a.each do |e|
  h[e] += 1
end

1.upto(n) do |k|
  b = a[k-1]
  sum = 0
#puts "k=#{k} b=#{b}"
  1.upto(n) do |l|
    i = h[l]
    i -= 1 if(b == l)
    c = 0
    if i > 1 then
      c = i.! / (i-2).! / 2
    end
    sum += c
#puts "  l=#{l} i=#{i} c=#{c} sum=#{sum}"
  end
  puts sum
end