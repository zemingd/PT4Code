def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
 
def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

N,K = gsmi
S = gs

tmp = []

cnt = 0
now = 1
S.each_char do |s|
	if s.to_i==now
		cnt += 1
	else
		tmp << cnt
		now = 1 - now
		cnt = 1
	end
end
tmp << cnt if cnt!=0

tmp << 0 if S[-1] == '0'

ans = 0
left = 0
right = 2*K
if right > tmp.size
	ans = sum tmp 
else
	now = sum tmp[left..right]
end
until (right+2) > tmp.size do
	now -= (tmp[left] + tmp[left+1])
	now += tmp[right+1] + tmp[right+2]
	left += 2
	right += 2
	ans = max(ans,now)
end
puts ans