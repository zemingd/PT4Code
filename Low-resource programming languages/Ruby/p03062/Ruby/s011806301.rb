N = STDIN.gets.chomp.to_i
A = STDIN.gets.chomp.split(' ').map(&:to_i)

count = 0
# 負の数の数を数える
A.each { |a|
  count += 1 if a < 0
}

Aabs = A.map(&:abs)
result = Aabs.inject(:+)

if count % 2 != 0 then
  mini = Aabs.min
  result -= mini * 2
end

puts result