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
  check([arr[0][0], arr[1][1], arr[2][2]] - b)
end

checks(a, b)
a.transpose
checks(a, b)
puts "No"