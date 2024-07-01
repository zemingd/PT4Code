def calc(str,prev)
  	cnt = 0
	str.chars {|c| c.match(/[ATCG]/) ? cnt +=1 : break}
    cnt = [prev, str.length > 1 ? calc(str[1..-1], cnt) : cnt].max
end
 
puts calc(gets.chomp, 0)