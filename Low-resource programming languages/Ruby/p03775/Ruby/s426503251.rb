#ABC057C_DigitsMultiplication.rb
n = gets.to_i
count = []
m = Math.sqrt(n).to_i
for i in 1 .. m
  if n % i == 0
    #puts "#{n}/#{i}=#{n/i}...#{n%i}"
    if (n/i).to_s.size > i.to_s.size
      count << (n/i).to_s.size
    else
      count << i.to_s.size
    end
  end
end
p count.min
