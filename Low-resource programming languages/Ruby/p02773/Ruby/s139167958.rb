N = gets.to_i
S = N.times.map { gets.chomp }
 
counter = Hash.new(0)
maxV = 0
 
S.each do |s|
  counter[s] += 1
 
   maxV = counter[s] if maxV < counter[s]
end
 p counter
puts counter.select { |s, cnt| cnt == maxV }.keys.sort