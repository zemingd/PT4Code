def main(argv)
  (w, h, x, y) = gets.chomp.split(' ').map(&:to_i)
  
  s = (w * h).to_f / 2.0
  
  d = 0
  if x == (w / 2) && y == (h / 2) then
    d = 1
  end
  
  puts s.to_s + ' ' + d.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end