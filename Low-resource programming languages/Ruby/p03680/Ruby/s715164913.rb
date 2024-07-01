n=gets.to_i
button=gets.split.map(&:to_i)
last=0
last=button[0]
n.times.each do
    last=button[last-1]
    if last==2
    puts 2
    exit
    end
end
puts -1