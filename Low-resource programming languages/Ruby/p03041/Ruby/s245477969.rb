    def main()
        stdin = readlines.map{|e| e.chomp! }
        nums = stdin[0].split(' ').map {|i| i.to_i}
        chars = stdin[1].split('')
        chars[nums[1]-1].downcase!
        print chars.join
    end
    main()