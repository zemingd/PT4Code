n = gets.to_i
srray = gets.split("").map(&:to_s)
answer = []
answer.push(srray.count("."))
i=0
m= answer[0]
while i<n
  if srray[i] == "."
    m -= 1
  else
    m += 1
  end
  answer.push(m)
  i+=1
end
puts answer.min