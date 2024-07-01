r = Array.new(2)
loop{
  input = gets.split(" ")
  r[0] = input[0].to_i
  r[1] = input[1].to_i
  if r[0] == 0 && r[1] == 0
      break
  end
  r.sort!
  puts r[0].to_s + " " + r[1].to_s
}