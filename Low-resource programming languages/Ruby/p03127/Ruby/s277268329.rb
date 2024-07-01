n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
a.sort!.reverse!
ans = a.min
for i in 0...n
  for j in i+1...n
    amari = a[i] % a[j]
    #p "#{a[i]}, #{a[j]} amari:#{amari}"
    unless amari == 0
      diff = a[j] - amari
      ans = [ans, diff].min
    end
    if ans == 1
      break
    end
  end
end
puts ans