BLDG = 4
FLOOR = 3
ROOM = 10

cnt = Array.new(BLDG) do
    Array.new(FLOOR) do
        Array.new(ROOM, 0)
    end
end

data = gets.chomp.to_i
data.times do
    bldg, floor, room, people = gets.chomp.split.map(&:to_i)
    cnt[bldg - 1][floor - 1][room - 1] += people
end

BLDG.times do |i|
    puts "####################" if i != 0
    FLOOR.times do |j|
        ROOM.times do |k|
            print " " + cnt[i][j][k].to_s
        end
        puts ""
    end
end