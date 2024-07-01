cubes = gets.chomp.split("").map(&:to_i)
count = 0
last_remove_cube = 1
remove_existed = true
while remove_existed == true && 1 < cubes.length do
  cubes[[last_remove_cube - 1, 0].max..cubes.length - 2].each_with_index do |cube, index|
    remove_existed = false
    if cube + cubes[index + 1 + [last_remove_cube - 1, 0].max] == 1
      count += 1
      cubes.slice!(index + [last_remove_cube - 1, 0].max, 2)
      last_remove_cube = index + [last_remove_cube - 1, 0].max
      puts last_remove_cube
      remove_existed = true
      puts cubes
    end
    break if remove_existed == true
  end
end

puts count * 2