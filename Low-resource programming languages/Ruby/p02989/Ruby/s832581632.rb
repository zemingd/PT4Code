def main()
        stdin = $stdin.readlines.map {|i| i.chomp}
        length = stdin[0].to_i
        elem = stdin[1].split(" ").map{|i|i.to_i}
        elem = elem.sort()
        higher = elem[length/2]
        lower = elem[(length/2)-1]
        size = (lower...higher).size()
        print(size)
end
main()