ret = gets
while a = gets.scan(/\d+/).map(&:to_i) rescue nil
  x = a.size
  x = x.times { |i|
    if a[i] != i+1
      if x > i
        x = i 
      else
        break  if a[x]!=i+1 || a[i]!=x+1
      end
    end
  }
  puts (x==a.size ? 'YES' : 'NO')
end