	inf=Float::INFINITY
	reads_i=lambda{||gets.chomp.split(" ").map(&:to_i)}
	num=reads_i[]
	idx=0
	k=num[1]
	seq=Array.new(100000){0}
	for i in 0..num[0]-1
		data=reads_i[]
		data[0]-=1
		seq[data[0]]+=data[1]
	end
	
	prog=true
	for i in 0..seq.length-1
		idx+=seq[i]
		if idx>=k && seq[i]>0 && prog==true
				puts(i+1);
				prog=false;
		end
	end