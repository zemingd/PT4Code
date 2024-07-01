require 'prime'
# n = gets.chomp.to_i
a, b = gets.chomp.split().map(&:to_i)

ans = 1
1.upto(10**6).each do |i|
  if a%i==0 && b%i ==0 && Prime.prime?(i)
    # p i
    ans+=1
  end
end

puts ans