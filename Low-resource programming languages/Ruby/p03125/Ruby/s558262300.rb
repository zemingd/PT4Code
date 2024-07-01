a,b = gets.split
if b.to_i % a.to_i == 0
    puts a.to_i + b.to_i
else 
    puts b.to_i - a.to_i
end