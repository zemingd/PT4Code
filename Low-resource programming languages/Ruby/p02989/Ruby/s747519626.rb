def main
  n = STDIN.gets.chomp.to_i
  ns = STDIN.gets.split(' ').map(&:to_i).sort

  half = n / 2 
  return 0 if half == 0

  result = 0
  ((ns[half - 1] + 1)..ns[half]).each do |target|
    result += 1 if target > ns[half - 1] && target <= ns[half]
  end
  return result
end

puts main