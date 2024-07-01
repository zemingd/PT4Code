n=gets.to_i
a=gets.split.map.with_index {|ai,i| ai.to_i-i-1}
w=a.sort[n/2]
ans=0
a.each do |ai|
  ans += (ai-w).abs
end
puts ans