def main
  base, div, target_m = ARGF.gets.split.map(&:to_i)

  mods = []
  1.upto(100) do |n|
    cur = base * n

    m = cur % div
    if m == target_m
      puts "YES"
      return
    end

    if mods.index(m)
      puts "NO"
      return
    end
  end

  puts "NO"
end

if __FILE__ == $0
  main
end
