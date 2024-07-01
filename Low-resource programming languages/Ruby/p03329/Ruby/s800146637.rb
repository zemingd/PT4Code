MAX_NUM = 100000.freeze

def make_array
  array = []
  loop.with_index do |_, i|
    tmp = 6 ** i
    break if MAX_NUM <= tmp
    array << tmp
  end

  loop.with_index do |_, i|
    tmp = 9 ** i
    break if MAX_NUM <= tmp
    array << tmp
  end
  array.sort.uniq
end

input = gets.to_i

unless (1 <= input && input <= MAX_NUM)
  puts 'invalid input'
  exit
end

array = make_array

loop.with_index do |_, i|
  array.reverse_each do |elm|
    if input - elm < 0
      next
    else
      input -= elm
      break
    end
  end
  if input == 0
    puts i + 1
    break
  end
end