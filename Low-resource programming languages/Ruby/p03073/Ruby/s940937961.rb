S = gets.chomp.chars

def count(list, first_color)
  color = first_color
  count = 0
  S.each do |c|
    count += 1 if c != color
    color = color == '0' ? '1' : '0'
  end
  count
end

ans = [count(S, '0'), count(S, '1')].min
puts ans
