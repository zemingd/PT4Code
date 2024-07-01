while a = (gets.scan(/\d+/)||[]).map(&:to_i)
  x = (a[0]+a[1])/2
  puts (x*2 == a[0]+a[1] ? x : 'IMPOSSIBLE')
end