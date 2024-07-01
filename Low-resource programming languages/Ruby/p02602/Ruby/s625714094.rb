n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

(k...n).each{|i|
  if a[i-k] < a[i]
    puts "Yes"
  else
    puts "No"
  end
}
