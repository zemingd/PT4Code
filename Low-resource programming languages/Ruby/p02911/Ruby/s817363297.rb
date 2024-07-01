n, k ,q = gets.chomp.split.map(&:to_i)
a = Array.new(n,k - q)

q.times{
  n = gets.chomp.to_i
  a[n - 1] += 1
}

a.each{ |score|
  if (score > 0)
    puts "Yes"
  else
    puts "No"
  end
}