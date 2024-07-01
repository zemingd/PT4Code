1 2 10 20 15 200
110 10Mac-109:ruby t.nakamura$ cat sample.rb
a,b,c,d,e,f = gets.split.map(&:to_i)
s=[]; w=[];
50.times do |i|
  50.times do |j|
    k = c*i + d*j
    s << k if k < f
    k = (a*i + b*j)*100
    w << k if k <= f && k > 0
  end
end

maxNord = 0
sumA = 0
sumS = 0

w.each do |i|
  s.each do |j|
    if i + j <= f
      nord = j.to_f / (i+j)
      if nord > maxNord && j*100 <= e*i
        maxNord = nord
        sumA = i + j
        sumS = j
      end
    end
  end
end
sumA = a * 100 if sumA == 0
print "#{sumA} #{sumS}"