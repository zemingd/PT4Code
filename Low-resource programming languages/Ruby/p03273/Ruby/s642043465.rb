h, w = gets.split.map(&:to_i)

table = []
h.times do
  str = gets.chomp.chars
  unless str.all? {|c| c == '.'}
    table << str
  end
end

new_table = []
table.transpose.each do |t|
  if t.include?('#')
    new_table << t
  end
end

new_table.transpose.each do |t|
  puts t.join
end
