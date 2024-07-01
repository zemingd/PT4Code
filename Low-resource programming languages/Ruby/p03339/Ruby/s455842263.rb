EAST = 0
WEST = 1

def count(s)
  c = [0, 0]
  s.split('').each do |x|
    if x == 'E' then
      c[EAST] += 1
    else
      c[WEST] += 1
    end
  end
  return c
end

def main(argv)
  n = gets.chomp.to_i
  s = gets.chomp
  
  m = n + 1
  (0...n).each do |i|
    x = s[0..i-1]
    y = s[i+1..n]
    if i == 0 then
      x = ""
    end
      
    m = [m, count(x)[WEST] + count(y)[EAST]].min
  end  
  puts m.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end