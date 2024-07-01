n=gets.to_i
button=gets.split.map(&:to_i)

last=button[0].to_i
n-1.times.each do
    last=button[last-1]
    if last==2
    puts 2
    exit
    end
end
puts -1