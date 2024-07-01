x,n=gets.split.map(&:to_i)
ary=gets.split.map(&:to_i)
if n.zero?
  puts x
  exit
end
ans=0
(1..101).each{|i|ans=i if !ary.include?(i) && (ans-x).abs > (i-x).abs}
puts ans