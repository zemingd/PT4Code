H, W = gets.split.map(&:to_i)
if H==1 or W==1
	p 1
else
	p (H*W+1)/2
end
