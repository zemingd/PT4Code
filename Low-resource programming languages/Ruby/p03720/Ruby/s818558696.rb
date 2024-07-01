s = gets.chomp.split(" ").map(&:to_i)

paths = [[]]
count = 0
while(s[1] > count)
    a = ""
    a = gets.chomp.split(" ").map(&:to_s)
    paths[count] = a
    count = count + 1
end

h = Hash.new(0)
initArray = [*"1"..s[0].to_s]
initArray.each{|e| h[e] = 0}

for i in 0..s[1]-1
    paths[i].each{ |e| h[e] += 1 }
end
h = h.sort {|(k1, v1), (k2, v2)| k2 <=> k1 }.reverse

h.each do |key, value|
    print(value)
    print("\n")
end
