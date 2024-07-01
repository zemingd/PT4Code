n = gets.to_i
s = gets.split("")
alp = [*'A'..'Z']
ary = []
s.each do |x|
  if alp.index(x) + n >= 26
    ary << alp[alp.index(x) + n - 26]
  else
  	ary << alp[alp.index(x) + n]
  end
end

puts ary.inject(:+)