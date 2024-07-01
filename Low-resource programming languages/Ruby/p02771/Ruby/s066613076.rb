a, b, c = gets.chomp.split.map(&:to_i)
def array(a, b, c)
# 元の値を残したい = uniq
# 元の値を変更したい = uniq!
array = [a, b, c].uniq
  if array count == [2]
    puts "Yes"
  else
    puts "No"
  end
end

