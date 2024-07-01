n, m = gets.chomp.split(' ').map(&:to_i)

ans = 0

array = []
for i in 0..(n - 1) do
  new_array = gets.chomp.split(' ').map(&:to_i)
  new_array.shift
  array += new_array
end

if n == 1
  ans = array.length
else
  for i in 1..m do
    array[i] = array.count(i)
    if array[i] == n
      ans += 1
    end
  end
end

print ans

