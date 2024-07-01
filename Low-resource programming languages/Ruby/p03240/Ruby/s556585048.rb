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
		h = dis(x,y,xyhs[0][0],xyhs[0][1]) + xyhs[0][2]
		
		flag = true
		(1...n).each do |i|
			xyh = xyhs[i]
			if (h-dis(x,y,xyh[0],xyh[1]))!=xyh[2]
				flag = false
				break
			end
		end
		
		puts [x,y,h].join(" ") if flag
	end
end