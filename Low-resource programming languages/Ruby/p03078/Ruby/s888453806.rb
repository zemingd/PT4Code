def main(argv)
  (x, y, z, k) = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i).sort{|p, q| q <=> p}
  b = gets.chomp.split(' ').map(&:to_i)
  c = gets.chomp.split(' ').map(&:to_i)
  
  d = []
  b.each{|p| c.each{|q| d.push(p + q)}}
  d.sort!{|p, q| q <=> p}

  v = [0] * (k * k)
  [k, x].min.times do |i|
    [k, y * z].min.times do |j|
      v[i * k + j] = a[i] + d[j]
    end
  end
  v.sort!{|p, q| q <=> p}
  
  k.times do |i|
    puts v[i].to_s
  end
end

if self.to_s == 'main' then
  main(ARGV)
end