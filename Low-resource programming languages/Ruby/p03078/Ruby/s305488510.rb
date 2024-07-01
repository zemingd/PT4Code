def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
 
def desc(ar) ar.sort.reverse end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

X,Y,Z,K = gsmi
A = desc gsmi
B = desc gsmi
C = desc gsmi

ans = []
X.times do |x|
	Y.times do |y|
		break if (x+1)*(y+1) > K
		Z.times do |z|
			break if (x+1)*(y+1)*(z+1) > K
			ans << A[x] + B[y] + C[z]
		end
	end
end

puts desc(ans)[0...K]