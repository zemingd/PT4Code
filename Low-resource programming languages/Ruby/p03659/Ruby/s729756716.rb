n=gets.to_i
as=gets.split.map(&:to_i)
s=as[0]
a=as[1..n-1].inject(:+)
diff=(a-s).abs
(n-2).times do |i|
  s+=as[i+1]
  a-=as[i+1]
  curdiff=(a-s).abs
  diff=curdiff if curdiff<diff
end
puts diff
