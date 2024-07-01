a=gets.split.map(&:to_i)
array=[]
a[0].times{
  array << gets.chomp
}
puts array.sort.join