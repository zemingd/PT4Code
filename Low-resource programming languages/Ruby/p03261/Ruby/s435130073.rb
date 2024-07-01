N = gets.chomp.to_i
input = Array.new(N) { gets.chomp.chars }
input.each_cons(2) do |a, b|
  if input.count(a) > 1
    puts 'No'
    exit
  end
  unless a[-1] == b[0]
    puts 'No'
    exit
  end
end
puts 'Yes'
