n,k,q = gets.chomp.split(' ').map(&:to_i)
arr = Array.new(n,0)
q.times do
  arr[gets.to_i - 1] += 1
end
arr.each do |part|
  if q - part < k #partが正解数なので、q-partが不正解数になる。
    puts "Yes"
  else
    puts "No"
  end
end
