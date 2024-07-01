s = gets.split(//).map(&:to_s)

hash = {"a"=>1,"b"=>1,"c"=>1}
shash = Hash.new
s.each do |s|
    shash[s] = 1
end

if hash == shash
    puts "Yes"
else
    puts "No"
end