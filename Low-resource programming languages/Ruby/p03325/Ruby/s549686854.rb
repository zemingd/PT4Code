def main

  _ = ARGF.gets.chomp.to_i
  nums = ARGF.gets.split.map(&:to_i)

  cnt = 0
  nums.each do |n|
    while n.even?
      cnt += 1
      n /= 2
    end
  end

  puts cnt
end

if __FILE__ == $0
  main
end
