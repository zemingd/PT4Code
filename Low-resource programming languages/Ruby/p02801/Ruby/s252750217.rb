c = gets.chomp

alf = []
("a".."z").each do |i|
  alf << i
end

alf.each_with_index do |k, i|
  if k == c
    puts alf[i+1]
    break
  end
end