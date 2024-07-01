N = gets.to_i
D = gets.chomp.split(" ").map(&:to_i)

cD = []
D.each{|s|
  if cD[s].nil? then
    cD[s] = 1
  else
    cD[s] += 1
  end
}

ans = 1
if D[0] != 0 then
  ans = 0
elsif  cD[0] > 1 then
  ans = 0
else
  for i in 1...cD.length do
    if cD[i].nil? then
      ans = 0
      break
    else
      ans *= cD[i-1] ** cD[i]
    end
  end
end

p ans.modulo(998244353)
