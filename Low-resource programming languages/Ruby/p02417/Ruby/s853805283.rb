str = gets.chomp
table = Hash.new(0)

str.scan(/./){|m| table[m] += 1}
p table
("a".."z").each {|al|
  num = 0

table.each{|key, value|
  if key == al
    num = value
  elsif key == al.upcase
    num = value
  end
}

puts "#{al} : #{num}"
}

