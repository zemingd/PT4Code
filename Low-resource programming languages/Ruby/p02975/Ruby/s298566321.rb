n = gets.to_i
a = gets.split.map(&:to_i)

def yes
  puts 'Yes'
  exit
end
def no
  puts 'No'
  exit
end

yes if a.all?(&:zero?)

if n % 3 == 0
  b = a.group_by(&:itself)
  no unless b.each_value.map(&:size).all? {|x| x % (n/3) == 0 }
  case b.size
  when 3
    c = b.keys
    yes if c[0] == c[1] ^ c[2]
  when 2
    c = b.values.sort_by(&:size).map(&:first)
    yes if c[0] == 0
  end
end

puts 'No'
