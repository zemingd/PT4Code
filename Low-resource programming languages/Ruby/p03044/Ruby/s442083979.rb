io = STDIN
n=io.gets.to_i

uvw=(n-1).times.map {io.gets.split.map(&:to_i)}
even=Hash.new{|h,k|h[k]=[]}
odd=Hash.new{|h,k|h[k]=[]}

color=Array.new(n+1)
uvw.each do |u,v,w|
  if w.even?
    even[u]<<v
    even[v]<<u
  else
    odd[u]<<v
    odd[v]<<u
  end
end
odd.sort_by{|k,v|-v.size}.each do |k,vs|
  init=color[k]||"1"
  reverse= init=="1" ? "0" : "1"
  color[k]=init
  vs.each {|v|color[v]=reverse}
end
(1..n).each do |i|
  unless color[i]
    even[i].each do |k|
      color[i]=color[k] if color[k]
    end
  end
end
(1..n).each do |i|
  unless color[i]
    if even[i].none?{|j|color[j]}
      color[i]="1"
    end
  end
end
puts color[1..-1]
