gets.to_i.times do
  arr = gets.chomp.split(" ").map(&:to_f)
  a = [].push(arr.shift).push(arr.shift)
  b = [].push(arr.shift).push(arr.shift)
  c = [].push(arr.shift).push(arr.shift)
  d = [].push(arr.shift).push(arr.shift)

  a,b=b,a if a[0]>b[0]
  c,d=d,c if c[0]>d[0]

  # a<b, c<d

  i = (b[1]-a[1])/(b[0]-a[0])
  j = (d[1]-c[1])/(d[0]-c[0])
  eps = 1e-9

  puts ((i - j).abs <= eps || (i - j).abs <= [i.abs, j.abs].max * eps) ? "YES" : "NO"
end