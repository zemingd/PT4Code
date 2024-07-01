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

cD.each{|s|
  s = 0 if s.nil?
}

ans = 1
if D[0] != 0 then
  ans = 0
elsif  cD[0] > 1 then
  ans = 0
else
  for i in 1...cD.length do
    ans *= cD[i-1] ** cD[i]
  end
end

p ans.modulo(998244353)
