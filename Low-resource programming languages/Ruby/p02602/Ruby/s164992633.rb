n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

(k+1).upto(n) do |i|
  if a[i-k-1] < a[i-1]
    puts 'Yes'
  else
    puts 'No'
  end
end
