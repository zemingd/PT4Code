n = gets.to_i
s = gets.to_s.chomp

def count_target(all_count, string)
  black_size = string.split('').select{ |c| c == '#' }.size

  first_black_index = string.split('').index('#')
  if first_black_index.nil?
    need_count = all_count
  else
    need_count = string.split('')[first_black_index..-1].select{ |c| c == '.' }.size
  end

  return [black_size, all_count - black_size, need_count].min
end

puts(count_target(n, s))