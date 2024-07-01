n, m, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

count = 0
while k > 0
  #p "#{a[0]}, #{b[0]}"
  _next = if a.empty? && b.empty?
           break
         elsif a.empty?
           b.shift
         elsif b.empty?
           a.shift
         elsif a[0] < b[0]
           a.shift
         else
           b.shift
         end
  if k >= _next
    count += 1
    k -= _next
  end
end

puts count
