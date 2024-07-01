n = gets.to_i
l = gets.split(" ")
l.map!(&:to_i)
l.sort!.reverse!

answer = 0

for i in 0..n-1
  for j in i+1..n-1
    b = l[i] - l[j]
    for k in j+1..n-1
      if l[k] > b
        answer += 1
      else
        break
      end
    end
  end
end

puts answer