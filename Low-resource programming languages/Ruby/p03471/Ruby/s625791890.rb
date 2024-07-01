N, K= gets.chomp.split.map(&:to_i)

yen10000 = -1

yen5000 = -1

yen1000 = -1

(0..N).each do |n|
  (0..N-n).each do |m|
  	if K == n*1000 + m*5000 + (N-n-m)*10000
  		yen1000 = n
  		yen5000 = m
  		yen10000 = N-n-m
  	end
  end
end

puts "#{yen10000} #{yen5000} #{yen1000}"