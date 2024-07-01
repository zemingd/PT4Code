n=gets.chomp.to_i
a=gets.chomp.split.map(&:to_i)
k=0

(1..n-2).times do |i|
  if ((a[i] < a[i+1]) && (a[i+1]< a[i+2])) || ((a[i] > a[i+1]) && (a[i+1]> a[i+2])) then
    k+=1
  end
end

puts k