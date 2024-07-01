
n, y  = gets.strip.split.map(&:to_i)
string ='-1 -1 -1'
catch Object do
n.times do |i|
  yen10=10000*i
  (n-i+1).times do |j|
    yen5=5000*j
    (n-i-j+1).times do |k|
      yen1=1000*k
      if y==yen10+yen5+yen1 && n == i + j + k
        string=i.to_s+' '+j.to_s+' '+k.to_s
          throw Object
      end
    end
end
end
end
puts string