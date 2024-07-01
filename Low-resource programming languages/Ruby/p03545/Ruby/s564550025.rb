ticket = gets.chomp.split('').map(&:to_s)

['+', '-'].repeated_permutation(3) do |bit|
  str = ticket.zip(bit).flatten.compact.join
  if eval(str) == 7
    puts "#{str}=7"
    break
  end
end