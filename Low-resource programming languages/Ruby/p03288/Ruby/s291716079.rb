#a , b = gets.strip.split(' ').map(&:to_i);
x = gets.chomp;
mp = Hash.new(0);
mpC = Hash.new(0);

i = 0;
x1 = x.split("");
x1.each do |indexOfChar| 
	mp[indexOfChar]+=1;
	mpC[indexOfChar] = i;
	i+=1;
end

if x[0] == 'A' && mp['C'] == 1 && mpC['C'] > 1 && mpC['C'] < x.length - 1 
	puts "AC";
	else
	puts "WA";
end
