#a , b = gets.strip.split(' ').map(&:to_i);
x = gets.chomp;
mp = Hash.new(0);
mpC = Hash.new(0);

i = 0;
counter = 0;
x1 = x.split("");

x1.each do |indexOfChar| 
	if indexOfChar.downcase == indexOfChar 
		counter+=1;
	end
	mp[indexOfChar]+=1;
	mpC[indexOfChar] = i;
	i+=1;
end
if x[0] == 'A' && mp['C'] == 1 && mpC['C'] > 1 && mpC['C'] < x.length - 1  && counter == x.length - 2
	puts "AC";
	else
	puts "WA";
end
