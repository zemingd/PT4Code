n=gets.chomp.to_i
a=gets.chomp.split.map(&:to_i)
k=0

(n-2).times do |i|
  if ((n[i] < n[i+1]) && (n[i+1]< n[i+2])) || ((n[i] > n[i+1]) && (n[i+1]> n[i+2])) then
    k+=1
  end
end

puts k