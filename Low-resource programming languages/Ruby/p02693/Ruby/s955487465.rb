#!ruby

KK = ARGF.gets.chomp.to_i
AA, BB = ARGF.gets.chomp.split.collect {|el| el.to_i}

ak = AA / KK

ans = "NG"

kk = ak * KK
if kk < AA
  kk += KK
end
if kk <= BB
  ans = "OK"
end

puts ans
