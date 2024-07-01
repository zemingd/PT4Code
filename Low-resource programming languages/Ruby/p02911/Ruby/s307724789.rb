nkq = gets.chomp.split
n = nkq[0].to_i
k = nkq[1].to_i
q = nkq[2].to_i

a = []
q.times do
    input = gets.to_i
    a << input
end

n.times do |i|
    count = a.count(i+1)
    if q - k < count
        puts "Yes"
    else
        puts "No"
    end
end