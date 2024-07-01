def main
  s_places = Array.new(26) {|idx| Array.new }
  t_places = Array.new(26) {|idx|  Array.new }
  # pp s_places.length

  # a : 97
  # z : 122
  gets.chomp.chars.each_with_index do |c, i|
    s_places[c.ord - 97] << i
  end
  s_places.sort!
  # pp s_places

  gets.chomp.chars.each_with_index do |c, i|
    t_places[c.ord - 97] << i
  end
  t_places.sort!
  # pp t_places

  if s_places == t_places
    puts 'Yes'
  else
    puts 'No'
  end

end

if __FILE__ == $0
  main
end
