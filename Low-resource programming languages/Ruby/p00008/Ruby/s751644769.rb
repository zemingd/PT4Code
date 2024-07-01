 while (n = gets.chomp) =~ /^[0-9]$|^1[0-9]$|^2[0-9]$|^3[0-9]$|^4[0-9]$|^50$/
  2   count = 0
  3   10.times do |a|
  4     10.times do |b|
  5       10.times do |c|
  6         10.times do |d|
  7           count += 1 if (a + b + c + d) == n.to_i
  8         end
  9       end
 10     end
 11   end
 12   puts count
 13 end