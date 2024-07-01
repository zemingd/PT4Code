loop{
  input = gets
  break if input.nil?
  a = input.split(" ").map(&:to_i)
  n = a[0]+a[1]
  puts n.to_s.length
}