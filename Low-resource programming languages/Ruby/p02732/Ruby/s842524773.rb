n = gets.to_i
as = gets.chomp.split.map(&:to_i)

def pick(as,i)
  ans = []
  as.each_with_index do |n,idx|
    ans << n if idx != i
  end
  ans
end

n.times do |i|
	buf = pick(as,i)
	u = buf.uniq
  	if u.length != 2 && u.length != 1
    	puts "0"
    elsif u.length == 1
      	puts (1..buf.length).to_a.combination(2).to_a.length
    else
      	cnt1 = buf.count(u[0])
        cnt2 = buf.count(u[1])
		if cnt1 == 2 && cnt2 == 2
          puts "2"
        elsif cnt1 == 2 || cnt2 == 2
  		  puts "1"
        else
          puts cnt1*cnt2
        end
    end
end