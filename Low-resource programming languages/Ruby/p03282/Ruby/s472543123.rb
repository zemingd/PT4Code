S = gets.chomp
K = gets.to_i

index = S.split("").index{ |x| x != "1" }

if index >= K then
	puts 1
else
	puts S[index]
end
