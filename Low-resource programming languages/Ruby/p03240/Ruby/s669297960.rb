def gs() STDIN.gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
 
def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end


n = gi
xyhs = Array.new(n){gsmi}

def dis(x1,y1,x2,y2)
	(x1-x2).abs+(y1-y2).abs
end

101.times do |x|
	101.times do |y|
		j = 0
		while true
			h = dis(x,y,xyhs[j][0],xyhs[j][1]) + xyhs[j][2]
			break if xyhs[j][2]!=0
			j+=1
		end
		p h if x==55&&y==80
		
		flag = true
		((j+1)...n).each do |i|
			xyh = xyhs[i]
			next if xyhs[i][2]==0
			if (h-dis(x,y,xyh[0],xyh[1]))!=xyh[2]
				flag = false
				break
			end
		end
		
		puts [x,y,h].join(" ") if flag
	end
end