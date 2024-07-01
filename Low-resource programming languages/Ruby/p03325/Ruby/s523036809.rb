def ascan; gets.split.map(&:to_i);end

N = gets.to_i
p ascan.map{|e| t = 0;while(e%2==0);t+=1;e/=2;end;t}.reduce(:+)