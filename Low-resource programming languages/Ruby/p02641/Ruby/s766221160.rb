def main
  x,n = gets.chomp.split(" ").map(&:to_i)
  ps = gets.chomp.split(" ").map(&:to_i)

  i = 0
  loop do
    target = x - i
    unless ps.include? target
      puts target
      return
    end
    target = x + i
    unless ps.include? target
      puts target
      return
    end
    i += 1
  end
end

main

