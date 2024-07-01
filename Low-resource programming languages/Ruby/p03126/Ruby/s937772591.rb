n,m = gets.split(" ")
k_ary = []
while k = gets do
    k = k.split(" ").map(&:to_i)
    k.delete_at(0)
    k_ary.push(k)
end

fav_list = Hash.new(0)
k_ary.each do |person|
    detect_list ||= person
    person.each do |menu|
        fav_list[menu] += 1
    end
end

count = 0
n = n.to_i
fav_list.values.each do |v|
    count += 1 if v == n
end
puts count
