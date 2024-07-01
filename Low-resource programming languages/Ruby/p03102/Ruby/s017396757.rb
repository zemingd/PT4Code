inputs = STDIN.readlines.map{|line|line.strip.split()}
input = inputs.shift
n = input[0].to_i
m = input[1].to_i
c = input[2].to_i
b_list = inputs.shift

counts = 0
n.times do |ni|
    a_list = inputs.shift
    sum = 0
    m.times do |mi|
        sum += b_list[mi].to_i * a_list[mi].to_i
    end
    if sum + c > 0 then
        counts += 1
    end
end

puts(counts)