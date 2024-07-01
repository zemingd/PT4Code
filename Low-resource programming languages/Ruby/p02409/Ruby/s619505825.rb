buildings = []
4.times do
    floors = []
    3.times do
        floors.push( Array.new(10, 0) )
    end
    buildings.push(floors)
end
n = gets.chomp.to_i
n.times do
    input = gets.split(" ")
    input.map!(&:to_i)
    buildings[input[0]][input[1]][input[2]] = input[3]
end
buildings.each_with_index do |floors, index|
    floors.each do |rooms|
        rooms.each do |value|
            print " ", value
        end
        puts
    end
    puts "#" * 20 if index != buildings.size-1
end
