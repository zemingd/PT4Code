a,b,c = gets.chomp.split(" ").map(&:to_i)
hash = {}
sum = a
while hash[sum%b] == nil
  if sum % b == c
    puts "YES"
    exit
  end
  hash[sum%b] = 1
  sum +=  a
end
puts "NO"