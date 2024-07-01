n = gets
array = readlines.map(&:chomp!)

a = array.group_by(&:itself).map { |k, v| [k, v.size] }.sort_by { |e| e[1] }

max_n = a.last[1]

a.reverse.each do |e|
  if e[1] == max_n
    puts e[0]
  else
    break
  end
end
