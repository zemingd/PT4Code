# frozen_string_literal: true

H, W = gets.chomp.split.map(&:to_i)

field = H.times.map do
  gets.chomp.split('')
end

def any?(field)
  field.each do |line|
    line.each do |val|
      return true if val == '.'
    end
  end
  false
end

def count_start_to_goal(field, start_x, start_y, count = 0)
  queue = [[start_x, start_y, 0]]

  until queue.empty?
    # p queue
    # queue = queue.uniq
    x, y, num = queue.shift
    field[y][x] = num
    count = num

    # break unless any?(field)

    if x + 1 < field[0].size && field[y][x + 1] == '.'
      # test
      queue.push [x + 1, y, num + 1]
    end

    if x - 1 >= 0 && field[y][x - 1] == '.'
      # field[y][x - 1] = '#'
      queue.push [x - 1, y, num + 1]
    end

    if y + 1 < field.size && field[y + 1][x] == '.'
      # field[y + 1][x] = '#'
      queue.push [x, y + 1, num + 1]
    end

    if y - 1 >= 0 && field[y - 1][x] == '.'
      # field[y - 1][x] = '#'
      queue.push [x, y - 1, num + 1]
    end

  end

  count
end

def copy_field(field)
  tmp = []
  field.each do |line|
    tmp << line.dup
  end
  tmp
end

field.each_with_index do |line, index_y|
  line.each_with_index do |block, index_x|
    next unless block != '#'

    tmp = count_start_to_goal(copy_field(field), index_x, index_y)

    @max ||= tmp

    @max = tmp if tmp > @max
  end
end

puts @max
