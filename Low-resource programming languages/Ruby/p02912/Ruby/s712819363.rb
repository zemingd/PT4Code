#n = gets.chomp.to_i
n, m = gets.chomp.split().map(&:to_i)
a = gets.chomp.split().map(&:to_i)

a.sort!.reverse!
threasholds = {}

def wari(e)
  count = 0
  while e>0
    e /= 2
    count += 1
  end
  count
end
p a

current = wari(a.first)
a.each_with_index do |e,i|
  w = wari(e)
  if w != current
    threasholds[current] = i
    current = w
  end
end

p threasholds

tcount = 0
used = 0
threasholds.each do |k,v|
  if m > v
    v -= m
    tcount+=1
  end
end

unless threasholds.empty?
  tmax = threasholds.first.first
  threasholds2 = []
  threasholds.map do |k,v|
    c = k - tmax + tcount
    if c > 0
      threasholds2.push [c, v]
    end
  end

  p ['t2', threasholds2]
  p used = threasholds2.map{|k,v| v}.inject(:+)

  0.upto(threasholds2.count-1).each do |i|
    kagen = i==0 ? 0 : threasholds2[i-1][1]
    w = 2 ** threasholds2[i][0]
    kagen.upto(threasholds2[i][1]-1).each do |j|
      a[j] /= w
    end
  end

  m -= used
end

p [a,m]

ans = 0
a.sort.reverse.each do |e|
  if m > 0
    ans += e/2
    m-=1
  else
    ans += e
  end
end

p ans
