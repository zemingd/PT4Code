n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

prev = a[0...k].reduce(:*)

(k+1).upto(n) do |i|
  current = (prev / a[i-k-1]) * a[i-1]
  if current > prev
    puts 'Yes'
  else
    puts 'No'
  end
  prev = current
end
