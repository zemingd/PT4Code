# 考察してないけど
n = gets.to_i
arr = gets.chomp.split.map(&:to_i).uniq.sort
until arr.size == 1 || arr.include?(1)
  a, b = arr[0], arr[1]
  if (b%a).zero?
    arr[1] = arr[0]
  elsif (b%a) == 1
    arr[0] = 1
    break
  else
    arr[0] = b%a
    arr[1] = a
  end
  arr.uniq!
end
puts arr[0]
