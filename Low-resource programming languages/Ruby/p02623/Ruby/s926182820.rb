n, m, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

count = 0
while k > 0
  #p "#{a[0]}, #{b[0]}"
  break if a.empty? && b.empty?
  time = if a.empty?
           b.shift
         elsif b.empty?
           a.shift
         elsif a[0] <= b[0]
           a.shift
         else
           b.shift
         end
  if k >= time
    count += 1
    k -= time
  end
end

puts count
