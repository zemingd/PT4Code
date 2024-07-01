n = gets.to_i
l = gets.split(" ")
l.map!(&:to_i)

answer = 0

for i in 0..n-1
  for j in i+1..n-1
    for k in j+1..n-1
      if (l[i] + l[j] > l[k]) && (l[j] + l[k] > l[i]) && (l[k] + l[i] > l[j])
        answer += 1
      end
    end
  end
end

puts answer