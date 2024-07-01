n=gets.to_i
s=gets.chomp.split("")
maxCount = []
(1..(n-1)).each do |index|
  xString = s[0,index]
  yString = s[index..-1]
  #配列の＆は積集合
  maxCount << (xString & yString).size
end
puts maxCount.max