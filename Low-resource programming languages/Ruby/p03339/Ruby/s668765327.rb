n = gets.to_i
people = gets.chomp.chars

must_face_W = people[1..people.length - 1].select {|direction| direction == "E"}.length
must_face_E = 0
min = must_face_W

people[1..people.length - 1].each_with_index do |person, index|
  if person == "E"
    must_face_W -= 1
  end
  if people[index] == "W"
    must_face_E += 1
  end
  sum = must_face_W + must_face_E
  if sum < min
    min = sum
  end
end
puts min