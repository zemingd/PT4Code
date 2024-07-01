s = gets.chomp.split('').map(&:to_i)
n = s.length

arr1 = Array.new(n) {|i| i % 2 }
arr2 = Array.new(n) {|i| (i + 1) % 2 }
#p s, arr1, arr2
cnt1 = 0
cnt2 = 0
n.times do |i|
  cnt1 += s[i] ^ arr1[i]
  cnt2 += s[i] ^ arr2[i]
end
#p cnt1, cnt2
puts([cnt1, cnt2].min)