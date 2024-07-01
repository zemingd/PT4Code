n,k=gets.chomp.split.map(&:to_i)
digit_count=1

while n>=k do
    n=n/k
    digit_count+=1
end

puts digit_count
