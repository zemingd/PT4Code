a,b,c=gets.split.map(&:to_i)
flg=false
(1..b).each do |i|
  if a*i % b == c
    flg=true
    break
  end
end

puts flg ? "YES" : "NO"