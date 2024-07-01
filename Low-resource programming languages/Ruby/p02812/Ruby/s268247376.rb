def main(argv)
  n = gets.chomp.to_i
  s = gets.chomp

  c = 0
  (n - 3).times do |i|
    if s[i..(i+2)] == 'ABC' then
      c += 1
    end
  end
  puts c.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end