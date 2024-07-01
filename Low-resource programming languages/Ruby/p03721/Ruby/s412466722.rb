n,k = gets.to_s.split.map{|t|t.to_i}

ary = Array.new(n) do
  a, b = gets.to_s.split
  a, b = a.to_i, b.to_i
end

sz = 0
ary.sort.each do |(a,b)|
  
  sz += b
  if k <= sz
    puts a
    exit
  end
end