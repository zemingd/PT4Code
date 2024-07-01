require 'prime'

a = get.chomp.to_i

while !(Prime.prime?(a)){
  a++
}
  
puts a