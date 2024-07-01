
a = gets.chomp.split(" ").map{
    |number|
    number.to_i
}
puts "----------------------"
puts a.sort.join(" ")
