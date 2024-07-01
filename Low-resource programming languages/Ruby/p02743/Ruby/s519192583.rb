a, b,c=gets.chomp.split(" ").map(&:to_i);
sqrta = Math.sqrt(a)
sqrtb = Math.sqrt(b)
sqrtc = Math.sqrt(c)
answer = "No"
if sqrta + sqrtb < sqrtc then
	answer = "Yes"
end
print("#{answer}\n")