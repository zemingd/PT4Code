x = gets.chomp.split.map(&:to_i)
read_a = gets.chomp.split.map(&:to_i)
read_b = gets.chomp.split.map(&:to_i)

read_a.concat(read_b)

read_a.sort

p read_a

read_total = 0
read_count = 0
i=0

while read_total < x[2] do
  read_total += read_a[i]
  i += 1
  read_count += 1
end

p read_count-1
