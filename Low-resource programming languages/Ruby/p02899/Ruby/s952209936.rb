N = gets.chomp.to_i
a = Array.new(10**5)

gets.chomp.split(" ").map(&:to_i).each.with_index do |v, idx|
  a[v - 1] = idx + 1
end

out = ""
a.each do |v|
  out += v.to_s + " "
end
puts out.chomp