n,m=gets.split.map(&:to_i)
aNs=gets.split.map(&:to_i)
aNsValueSum = aNs.inject(:+)
limitValue = (aNsValueSum.to_f / (4.0 * m.to_f)).ceil
count = 0
aNs.each do |value|
  count +=1 if value >= limitValue
end
puts count >= m ? "Yes" : "No"