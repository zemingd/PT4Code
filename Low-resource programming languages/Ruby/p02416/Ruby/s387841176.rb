while (n = gets.chomp) != "0" do
  puts n.split('').map!(&:to_i).sum
end
