MOD = 998244353

def main(argv)
  n = gets.chomp.to_i
  d = gets.chomp.split(' ').map(&:to_i).sort

  c = Hash.new
  d.uniq.each { |x| c[x] = d.count(x) }

  m = c.keys.max

  s = 1
  h = 0
  while h < m do
    unless (c.has_key?(h) and c.has_key?(h + 1)) then
      puts 0.to_s
      return
    end

    s *= c[h] ** c[h + 1]

    h += 1
  end

  puts (s % MOD).to_s
end

if self.to_s == 'main' then
  main(ARGV)
end