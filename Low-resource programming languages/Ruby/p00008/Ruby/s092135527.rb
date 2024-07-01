while i = gets
  x = i.to_i
  count = 0
  fin = 0
  while fin <= 50
    0.upto(x) do |i|
      a = i
      0.upto(x) do |j|
        b = j
        0.upto(x) do |k|
          c = k
          d = x - (a + b + c)
          count += 1 if ((a >= 0) && (a <= 9)) && ((b >= 0) && (b <= 9)) && ((c >= 0) && (c <= 9)) && ((d >= 0) && (d <= 9))
        end
      end
      fin += 1
    end
    puts count
  end
end