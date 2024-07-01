N=gets.to_i
ls=Array.new
N.times do |i|
  a,b=gets.split
  a=a.chomp
  b=b.to_i
  ls << [a,b,i+1]
end
ls.sort_by{|e,f|[e,N-f]}.each do |e,f,g|
  puts g
end
