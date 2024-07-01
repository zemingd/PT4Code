def main
  as = gets.chomp.split(" ").map(&:to_i)
  as.each_with_index do |a,i|
    if a == 0
      puts i+1
    end
  end
end

main

