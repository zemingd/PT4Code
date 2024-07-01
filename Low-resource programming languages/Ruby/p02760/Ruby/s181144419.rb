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

      if (first_index & second_index & third_index).any?
        puts 'Yes'
        exit
      end

      if (first_index + second_index + third_index).include?(0) && (first_index + second_index + third_index).include?(1) && (first_index + second_index + third_index).include?(2)
        puts 'Yes'
        exit
      end

      if first_index.size == 3 || second_index.size == 3 || third_index.size == 3
        puts 'Yes'
        exit
      end
    end
  end
end

puts 'No'
