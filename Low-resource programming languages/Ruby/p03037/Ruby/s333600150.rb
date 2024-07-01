line = gets.split(' ').map(&:to_i)
n = line[0]
m = line[1]
l = Array.new(m)
r = Array.new(m)
m.times do |i|
  #puts "#{i}回目"
  input = gets.split(' ').map(&:to_i)
  l[i] = input[0]
  r[i] = input[1]
end

hairetu = [*(l[0]..r[0])]
#puts hairetu[1]

for i in 1..m-1
  t = 0
  k = hairetu.size
  k.times do |u|
    if hairetu[t] >= l[i] && hairetu[t] <= r[i] then
        t+=1
    else
       hairetu.delete_at(t)
    end
  end
end
puts hairetu.size
