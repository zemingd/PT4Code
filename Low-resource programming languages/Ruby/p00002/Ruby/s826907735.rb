while line = gets do
    p ->(l){(l[0]+l[1]).to_s.size}.call line.split(' ').map(&:to_i)
end