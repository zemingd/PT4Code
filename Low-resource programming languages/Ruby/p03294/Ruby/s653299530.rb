def main
  _ = ARGF.gets.chomp.to_i
  nums = ARGF.gets.split.map(&:to_i)

  puts nums.inject(0){|s, n|s += n-1}
end

if __FILE__ == $0
  main
end
