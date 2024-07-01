a,b=gets.split(" ").map(&:to_i)
array=[]
a.times{
  array << gets.chomp
  }
puts array.sort.join
