n,d = gets.split(' ').map(&:to_i)
x = []
n.times do |a|
        nums = gets.split(' ').map(&:to_i)
        x << nums
end
count = 0
x.combination(2) do |c|
    sum = 0
    (0..d-1).each do |a|
        dis = (c[0][a]-c[1][a])**2
        sum = sum+dis
    end
    str =  Math.sqrt(sum).to_s
    index = str.index('.')
    if str[index+2] == nil
        count += 1
    end
end
puts count