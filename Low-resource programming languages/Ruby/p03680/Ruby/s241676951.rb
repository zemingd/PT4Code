N = gets.to_i
a = gets.chomp.split('').map(&:to_i)

i = 0
count = 0

while != 1 do
    i = a[i] - 1
    count++;
    if count > N then
        puts -1 exit
    end
end
puts count