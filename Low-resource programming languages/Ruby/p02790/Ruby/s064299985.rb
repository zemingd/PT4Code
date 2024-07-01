a,b = gets.chomp.split(" ").map(&:to_i)
answer = ""
if a != b then
  if a < b then
    for i in 1..a do
      answer += b.to_s
    end
  else
    for i in 1..b do
      answer += a.to_s
    end
  end
else
    for i in 1..a do
      answer += a.to_s
	end
end
print answer