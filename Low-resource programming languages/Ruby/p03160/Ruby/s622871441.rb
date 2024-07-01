N = gets.to_i
h = gets.split(" ")
h.map!(&:to_i)

LeastCostArray = Array.new(h.size,0)
LeastCostArray[0] = 0
LeastCostArray[1] = (h[1]-h[0]).abs

for n in 2..N-1
	if LeastCostArray[n-2]+(h[n]-h[n-2]).abs<LeastCostArray[n-1]+(h[n]-h[n-1]).abs then
		LeastCostArray[n]=LeastCostArray[n-2]+(h[n]-h[n-2]).abs
	else
		LeastCostArray[n]=LeastCostArray[n-1]+(h[n]-h[n-1]).abs
	end
end

puts LeastCostArray[N-1]