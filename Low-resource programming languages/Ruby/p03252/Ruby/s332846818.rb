S = gets.chomp
T = gets.chomp

table = {}

T.chars.each_with_index do |t, i|
  table[T[i]] ||= []
  table[T[i]] << S[i]
  table[T[i]].uniq!

  if table[T[i]].size > 1
    puts 'No'
    exit
  end
end

puts 'Yes'
