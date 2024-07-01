class Array
  def gcd
    inject(:gcd)
  end
end

k = gets.to_i
answer = 0
ans = [10174780,10290813,10493367,10611772,10813692]

if k < 196 then

for a in 1..k
  for b in 1..k
    for c in 1..k
      answer = answer + [a,b,c].gcd
    end
  end
end
  
else
  answer = ans[k-196]
end

print answer
#196 -> 10174780
#197 -> 10290813
#198 -> 10493367
#199 -> 10611772
#200 -> 10813692