I = gets.chomp.split(' ').map(&:to_i)

for num1 in 0..5 do
  unless I.include?(num1)
    puts num1
  end
end