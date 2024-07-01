# Try AtCoder
# author: Leonardone @ NEETSDKASU

A, B = gets.strip.split.map &:to_i
S = gets.chomp

if S.size != A + B + 1 || S[A] != '-'
	puts 'No'
  	exit
end

if S =~ /^\d+-\d+$/
	puts 'Yes'
else
	puts 'No'
end
  

