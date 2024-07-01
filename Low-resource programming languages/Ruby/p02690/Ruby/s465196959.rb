x = gets.to_i

def root(x, n)
  r = 0
  a = 1 << (Math.log(x) / n / Math.log(2))
  while a > 0
    ra = r | a
    d = x - ra ** n
    return ra if d == 0
    r    = ra if d  > 0
    a >>= 1
  end
  return nil
end

b = 0

while true do
  a5 =(x - b ** 5).abs
  a = root(a5, 5)

  if a
    [
      [a,b],
      [-a,b],
      [a,-b],
      [-a,-b],
    ].each do |a1, b1|
      if (a1 ** 5 - b1 **5) == x
        puts "#{a1} #{b1}" 
        exit 0
      end
    end
  end

  b += 1
end
