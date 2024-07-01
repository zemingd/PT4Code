input = readlines
# input = ["2 3 -10\n", "1 2 3\n", "3 2 1\n", "1 2 2\n"]
# input = ["5 2 -4\n", "-2 5\n", "100 41\n", "100 40\n", "-3 0\n", "-6 -2\n", "18 -13\n"]

A = []

input.each.with_index do |row, i|
  if i == 0
    splitted_row = row.split(" ")
    N = splitted_row[0].to_i
    M = splitted_row[1].to_i
    C = splitted_row[2].to_i
    next
  end

  if i == 1
    B = row.split(" ")
    next
  end

  A << row.split(" ")
end

num_of_correct_answer = 0

A.each do |a|
  answer = C

  B.each.with_index do |b, i|
    answer += a[i].to_i * b.to_i
  end

  if answer > 0
    num_of_correct_answer += 1
  end
end

puts num_of_correct_answer
