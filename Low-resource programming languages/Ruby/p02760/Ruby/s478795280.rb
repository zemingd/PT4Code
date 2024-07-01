a = 3.times.map { gets.chomp.split(" ").map(&:to_i) }
n = gets.to_i
b = n.times.map { gets.to_i }

def check(arr)
  if arr.empty?
    puts "Yes"
    exit
  end
end

def checks(arr, b)
  arr.each do |ai|
    check(ai - b)
  end
end

check([a[0][0], a[1][1], a[2][2]] - b)
check([a[2][0], a[1][1], a[0][2]] - b)
checks(a, b)
a.transpose
checks(a, b)
puts "No"