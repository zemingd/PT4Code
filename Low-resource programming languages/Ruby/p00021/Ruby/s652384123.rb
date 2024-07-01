require 'matrix'
n = gets.to_i
n.times {
    vec = gets.split.map(&:to_f).each_slice(4).map{|x1, y1, x2, y2|
        Vector[x2-x1, y2-y1]
    }
    if (vec[0].inner_product(vec[1]) - vec[0].r * vec[1].r).abs < 1e-5
        puts 'YES'
    else
        puts 'NO'
    end
}