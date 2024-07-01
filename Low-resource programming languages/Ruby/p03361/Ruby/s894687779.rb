line = gets.chomp.split(" ")
n = line[0].to_i
m = line[1].to_i

grid = []
grid.push(("." * (m + 2)).split(""))
for i in 1..n
  tmp = gets.chomp.split("")
  tmp.unshift(".")
  tmp.push(".")
  grid.push(tmp)
end
grid.push(("." * (m + 2)).split(""))

# p grid

flag = true
for i in 1...n
  for j in 1...m
    next if grid[i][j] == '.'
    
    if grid[i-1][j] == "." && grid[i+1][j] == "." &&
      grid[i][j-1] == "." && grid[i][j+1] == "."
      flag = false
      break
    end
  end
  if !flag
    break
  end
end

if flag
  puts "Yes"
else
  puts "No"
end