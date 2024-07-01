while (a = (gets||'').scan(/\d+/).map(&:to_i))[-1]
  x = a[0]+a[1]
  puts (x.even? ? x/2 : 'IMPOSSIBLE')
end