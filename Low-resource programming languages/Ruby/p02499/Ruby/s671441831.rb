memo = Hash.new
while line = gets
  line.strip!
  line = line.downcase
  line.each_byte {|d|
    next if d == ' '
    if memo[d] == nil
      memo[d] = 1
    else
      memo[d] += 1
    end
  }
end
alpha = "abcdefghijklmnopqrstuvwxyz"
alpha.each_byte { |a|
  output = memo[a]
  if output == nil then
    output = 0
  end
  puts "#{a.chr} : #{output}"
}