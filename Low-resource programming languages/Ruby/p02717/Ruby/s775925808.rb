def main
    x,y,z = gets.chomp.split(" ").map(&:to_i)
    puts [z,x,y].join(" ")
end

main
