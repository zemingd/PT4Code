Signal.trap(:INT){
  exit(0)
}

while come = gets
	a = ["aa","bb"]
	siz = 1 #keta
	a = come.split(" ")

	sum = a[0].to_i + a[1].to_i 

	for i in (1..10)
		 if siz > sum
	 		puts i-1
	 		break
	 	end
	 	siz *= 10
	end

end