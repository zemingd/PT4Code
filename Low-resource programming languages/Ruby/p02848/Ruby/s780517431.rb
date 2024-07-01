N = gets.chop.to_i
S = gets.chop.chars
alp = Array('A'..'Z')
code = []
S.each do |s|
  num = (alp.index(s) + 1) + N
	if num >> 26
      code << alp[num - 27]
    else
      code << alp[num]
    end
end

puts code.join