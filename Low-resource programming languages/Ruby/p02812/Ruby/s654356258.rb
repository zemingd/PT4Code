def main
  n = gets.to_i
  s = gets.chomp
  cnt = 0
  (0..n-3).each do |i|
    if s[i,3] == "ABC"
      cnt += 1
    end
  end
  puts cnt
end

main

