in_datas = []

loop {
    in_data = gets.split

    break if in_data == ["0"]
    in_datas << in_data[0].to_i
}

in_datas.each_with_index do |elem, i|
    printf("Case %d: %d\n", i + i, elem)
end

