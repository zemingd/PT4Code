loop{
a,b,c = gets.split
if b=="?"
break
end
puts"#{eval a+b+c}"
}