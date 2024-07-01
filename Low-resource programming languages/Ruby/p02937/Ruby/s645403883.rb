S = gets.chomp.split("")
T = gets.chomp.split("")

indexes = {
  'a' => [],
  'b' => [],
  'c' => [],
  'd' => [],
  'e' => [],
  'f' => [],
  'g' => [],
  'h' => [],
  'i' => [],
  'j' => [],
  'k' => [],
  'l' => [],
  'm' => [],
  'n' => [],
  'o' => [],
  'p' => [],
  'q' => [],
  'r' => [],
  's' => [],
  't' => [],
  'u' => [],
  'v' => [],
  'w' => [],
  'x' => [],
  'y' => [],
  'z' => []
}

S.each_with_index do |char, index|
  indexes[char].push(index)
end

pos = -1
loop_count = 0
T.each do |char|
  index = indexes[char].bsearch{ |i| i > pos }
  if index.nil?
    loop_count += 1
    index = indexes[char].first
    if index.nil?
      puts '-1'
      exit
    end
  end

  pos = index
end

puts loop_count * S.count + pos + 1