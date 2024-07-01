n=gets.to_i
n.times{
        s=(gets.to_i+gets.to_i).to_s
        puts s.length>80 ? "overflow":s
}