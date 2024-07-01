a,b=split.map{&:to_i}
array=[]
b.times{
  array << gets.chomp
}
puts array.sort.join
