require "prime"
io = STDIN
x=io.gets.to_i
Prime.each do |i|
  if i>=x
    puts i
    exit
  end
end
