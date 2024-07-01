#a , b = gets.strip.split(' ').map(&:to_i);
a = gets.chomp.to_i;
mp = Hash.new(0);
word = Array.new;
for i in 0 ... a 
	word[i] = gets.chomp;	
end

for i in 0 ... a 
	if mp[word[i]] > 0 
		puts "No"
		exit;
	end
end

counter = 0;
for i in 0 ... a 
	wordCompare = word[i]
	for j in 0 ... a
		if i != j 
			if word[i][word[i].length - 1] == word[j][0]
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

