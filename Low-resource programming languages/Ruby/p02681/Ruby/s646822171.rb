fir = gets.chomp
sec = gets
if fir.length <= 11 && sec.match(/#{fir}\d?/)
	puts 'Yes'
else
	puts 'No'
end