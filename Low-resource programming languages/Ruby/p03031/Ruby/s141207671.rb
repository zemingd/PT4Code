n,m = gets.split.map &:to_i

s = []

m.times do |i|
  ki,*si = gets.split.map &:to_i
  s << si
end
ps = gets.split.map &:to_i

ss = (1..n).to_a
count = 0

(0..n).each do |i|
  ss.combination(i) do |combi|
    flug = true
    s.size.times do |j|
      if (s[j] & combi).size % 2 != ps[j]
        flug = false
        break
      end
    end
    count += 1 if flug
  end
end

puts count