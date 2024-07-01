MOD = 998244353

def main(argv)
  n = gets.chomp.to_i
  d = gets.chomp.split(' ').map(&:to_i).sort

  if d[0] != 0 then
    puts 0
    return
  end

  c = Hash.new
  d.each do |x|
    if c.has_key?(x) then
      c[x] += 1
    else
      c[x] = 1
    end
  end

  m = c.keys.max

  s = 1
  h = 0
  while h < m do
    unless (c.has_key?(h) and c.has_key?(h + 1)) then
      puts 0
      return
    end

    t = (c[h] ** c[h + 1]) % MOD
    s = (s * t) % MOD

    h += 1
  end

  puts s.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end