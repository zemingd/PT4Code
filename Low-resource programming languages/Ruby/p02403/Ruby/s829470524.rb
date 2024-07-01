arys = []

loop {
    input = gets.split
    #p input
    arys << input

    break if input == ["0", "0"]
}

arys.each do |_ary|
    _ary[0].to_i.times do
        _ary[1].to_i.times do
            print("#")
        end
        print("\n")
    end
    print("\n")
end

