cnt = 0
n = gets.chomp.split("/").map(&:to_i)
if n[0] <= 2019
  if n[1] <= 4
    if n[2] <= 30
      puts "Heisei"
      cnt += 1
    end
  end
end
if cnt == 0
  puts "TBD"
end