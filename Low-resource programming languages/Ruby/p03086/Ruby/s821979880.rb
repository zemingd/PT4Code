def calc(str,prev)
  	cnt = 0
	str.chars {|c| c.match(/[ATCG]/) ? cnt +=1 : break}
    cnt = [prev, str.length > 1 ? calc(str.split("").drop(1).join, cnt) : cnt].max
end

puts calc(gets.chomp, 0)