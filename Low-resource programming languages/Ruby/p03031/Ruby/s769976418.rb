n, m = gets.split().map(&:to_i)
sw = []
m.times do 
  sw << gets.split().map(&:to_i)
end

p = gets.split().map(&:to_i)
ans = 0

(0..2**n-1).each do |i|
  lightOn = []
  flag = true
  i.to_s(2).rjust(n, '0').split('').each_with_index do |bit, index|
    lightOn << index + 1 if bit == '1'
  end
  sw.each_with_index do |array, index|
    onNumbers = 0
    array[0].times do |n|
      onNumbers += 1 if lightOn.include?(array[n+1])
    end
    flag = false if onNumbers % 2 != p[index] 
  end
  ans += 1 if flag
end

puts ans