# Here your code !
i = 1
$stdin.readlines.each do |input|
    a = input.split(' ').map(&:to_i)
    exit if a[0] == 0 && a[1] == 0
    
    puts a.sort.join(' ')
end