require 'prime'
include Math
def max(a,b);														a > b ? a : b 														end
def min(a,b);														a < b ?  a : b 														end
def swap(a,b);													a, b = b, a 															end
def gif; 																gets.to_i 																end
def gi;																	gets.split.map(&:to_i) 										end
def gs;																	gets.chomp 																end
def gc;																	gets.chomp.split('') 											end
def pr(num); 														num.prime_division 												end
def putall(obj);												obj.each{|o| puts(o)} 										end
def array(size,init = nil);							Array.new(size){init} 										end
def darray(size1, size2, init = nil);		Array.new(size1){Array.new(size2){init}} 	end
def rep(num);														num.times do|i|yield(i) end 							end
	def repl(st,en);											st.upto en-1 do|i|yield(i) end 						end
		
		n = gif
		t = gi
		m = gif
		sum = 0
		t.each do |tt|
			sum += tt
		end

		rep m do
			d = gi
			puts sum - t[d[0]-1]+d[1]
		end


