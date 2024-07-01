a,b=gets.chomp.split(" ").map { |e| e.to_s}
x=(a++b).to_i

for i in 1..1000 do
  if i**2 == x
      puts "Yes"
      exit
  end
end

puts "No"
