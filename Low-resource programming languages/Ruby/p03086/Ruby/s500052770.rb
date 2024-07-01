Input = gets.chomp

def calc(str,prev)
  	cnt = 0
	str.chars{|c| c.match(/[ATCG]/) ? cnt +=1 : break}
    cnt = [prev, str.length < 1 ? cnt : calc(str.split("").drop(1).join, cnt)].max
end

puts calc(Input,0)