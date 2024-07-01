N = 5

def f(x)
  ((x + 9) / 10) * 10
end

def main(argv)
  a = [0] * N
  N.times{|i| a[i] = gets.chomp.to_i}
  
  m = 1e+9
  md = 9
  N.times do |i|
    d = a[i] % 10
    
    if d == 0 then
      next
    end
    
    if md > d then
      md = d
      m = a[i]
    end
  end
  
  s = a.map{|x| f(x)}.reduce(:+)
  
  s = s - f(m) + m
  
  puts s.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end