def main(argv)
  (n, q) = gets.chomp.split(' ').map(&:to_i)
  s = gets.chomp
  
  a = []
  (n - 1).times do |i|
    if s[i] == 'A' && s[i + 1] == 'C' then
      a.push(i)
    end
  end
  
  t = [0] * (n + 1)
  n.times do |i|
    t[i + 1] = t[i]
    ret = a.find{|x| x == i}
    if ret != nil then
       t[i + 1] += 1
    end
  end
  
  q.times do |i|
    (l, r) = gets.chomp.split(' ').map(&:to_i)
    c = t[r] - t[l - 1]
    if a.find{|x| x == (r - 1)} != nil then
      c -= 1
    end
    puts c.to_s
  end
end

if self.to_s == 'main' then
  main(ARGV)
end