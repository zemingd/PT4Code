s = gets.split(//).map(&:to_s)

hash = {"a"=>1,"b"=>1,"c"=>1}
shash = Hash.new(0)
s.each do |string|
    string = string.to_s
    shash[string] += 1
end
puts hash
puts shash

if hash == shash
    puts "Yes"
else
    puts "No"
end