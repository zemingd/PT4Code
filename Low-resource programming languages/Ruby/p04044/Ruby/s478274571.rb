a,b=gets.split.map(&:to_i)
array=[]
b.times{
  array << gets.chomp
}
puts array.sort.join