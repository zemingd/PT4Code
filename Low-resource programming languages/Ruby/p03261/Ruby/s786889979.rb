#a , b = gets.strip.split(' ').map(&:to_i);
a = gets.chomp.to_i;
mp = Hash.new(0);
word = Array.new;
for i in 0 ... a 
	word[i] = gets.chomp;	
end

for i in 0 ... a 
	mp[word[i]]+=1;	
	if mp[word[i]] > 1 
		puts "No"
		exit;
	end
end

counter = 0;
for i in 0 ... a 
	for j in 0 ... a
		if i != j 
			if word[i][0] == word[j][word[i].length - 1]
				counter+=1;
				break;
			end	
		end
	end
end
if counter != 0
	puts "Yes";
	else
	puts "No";	
end

