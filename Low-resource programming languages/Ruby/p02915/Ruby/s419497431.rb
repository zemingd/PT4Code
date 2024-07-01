n = gets.chomp.split.map(&:to_i)  
count = 0
 
(1..n).each do |a|
  (1..n).each do |b|
    (1..n).each do |c|
       count += 1
    end
  end
end
 
puts count
