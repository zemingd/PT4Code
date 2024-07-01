while gets do
  a, b = $_.chomp.split(/ /).map(&:to_i)
  c1=0
  c2=0
  until a == 0
    a = a/10
    c1=c1+1
  end
  until b == 0
    b = b/10
    c2=c2+1
  end
  c = c1 + c2
  puts c
end
