  until ( iS=$stdin.gets.chomp )=="0" do
    puts iS.split("").map(&:to_i).sum
  end
