n=STDIN.gets
arr=Array[]
arr=STDIN.gets.split.map(&:to_i)
arr.reverse!
puts arr.join(" ")
  
  