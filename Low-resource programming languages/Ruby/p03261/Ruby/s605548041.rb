s=gets.to_i.times.map{gets.chomp}
flag =true
s.each_cons(2) do |a,b|
  flag=false if a[-1] != b[0]
end
flag=false if s!=s.uniq
puts flag ? :Yes : :No
