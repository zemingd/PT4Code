N = gets.to_i

l = N.to_s.length

a = [3,5,7]

all = 0

(l + 1).times do |i|
  next if l == 0
  
  a.repeated_permutation(i) do |bits|
    next if bits.count(7) == 0
    next if bits.count(5) == 0
    next if bits.count(3) == 0
    
    if (i == l)
      num = ""
      bits.each do |j|
        num += j.to_s
      end
      
      next if N < num.to_i
    
    end
    
    all += 1
  end


end

puts all
