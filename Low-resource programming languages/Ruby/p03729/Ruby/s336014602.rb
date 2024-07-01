

a,b,c=gets.split
if a[a.length-1] == b[0]
  if b[b.length-1]==c[0]
    puts "YES"
    exit(0)
  end
end
puts "NO"