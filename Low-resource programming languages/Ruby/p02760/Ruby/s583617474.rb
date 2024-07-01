array = []
3.times do
  array << gets.split.map(&:to_i)
end

n = gets

numbers = readlines.map(&:to_i)
first_index = []
second_index = []
third_index = []

if (first = numbers & array.first)
  if (second = numbers & array[1])
    if (third = numbers & array[2])
      first.each do |e|
        first_index << array.first.find_index(e)
      end

      second.each do |e|
        second_index << array[1].find_index(e)
      end

      third.each do |e|
        third_index << array[2].find_index(e)
      end

      if (first_index.compact & second_index.compact & third_index.compact).any?
        puts 'Yes'
        exit
      end

      if second_index.include?(1) && ((first_index.include?(0) && third_index.include?(2)) || (first_index.include?(2) && third_index.include?(1)))
        puts 'Yes'
        exit
      end

      if first_index.compact.size == 3 || second_index.compact.size == 3 || third_index.compact.size == 3
        puts 'Yes'
        exit
      end
    end
  end
end

puts 'No'
