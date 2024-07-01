def shiritori(a, b, c)
  puts a[a.length-1] == b[0] && b[b.length-1] + c[0] ? "YES" : "NO"
end

a, b, c= gets.chomp.split(" ")
shiritori(a, b, c)