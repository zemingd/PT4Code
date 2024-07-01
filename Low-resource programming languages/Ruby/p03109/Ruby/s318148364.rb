date=gets.chomp.split("/").map(&:to_i)
if(date[0]<2019)||(date[0]==2019 and date[1]<=4)
	print("Heisei")
else
	print("TBD")
end
