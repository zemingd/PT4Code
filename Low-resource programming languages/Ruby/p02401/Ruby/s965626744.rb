answers = Array.new

while true
	exp = gets.split(" ")
	break if exp[1] == "?"
	answer = exp[0].to_f + exp[2].to_f if exp[1] == "+"
	answer = exp[0].to_f - exp[2].to_f if exp[1] == "-"
	answer = exp[0].to_f * exp[2].to_f if exp[1] == "*"
	answer = exp[0].to_f / exp[2].to_f if exp[1] == "/"
	answers.push answer
end

answers.each{|ans|
	puts ans
}