n = gets.to_i
room = Array.new(4){Array.new(30, 0)}

while line = gets do
  b, f, r, v = line.split.map(&:to_i)
  room[b - 1][10 * (f - 1) + (r - 1)] += v
end

4.times do |i|
  3.times do |j|
    10.times do |k|
      if k != 9 
        print("#{room[i][10 * i + k]} ")
       else
         print room[i][10 * i + k]
       end
    end
    puts
  end
  puts "####################"
end