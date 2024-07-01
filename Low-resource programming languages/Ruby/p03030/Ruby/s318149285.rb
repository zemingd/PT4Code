class City
    attr_accessor :index, :name, :point
    def initialize(index, name, point)
        @index = index
        @name = name
        @point = point
    end
    def to_string
        "[#{@index}] #{@name}: #{@point}"
    end
end
N = gets.to_i
C = Array.new(N)
N.times do |i|
    s,p = gets.split
    city = City.new(i+1, s, p.to_i)
    C[i] = city
end
d = []
N.times do |i|
    if d.empty? then
        d.push C[i]
    else
        f = true
        d.each_with_index do |x, index|
            if C[i].name < x.name then
                d.insert(index, C[i])
                f = false
                break
            elsif C[i].name == x.name
                if C[i].point > x.point then
                    d.insert(index, C[i])
                    f = false
                    break
                end
            end
        end
        d.push C[i] if f
    end
end
d.each do |c|
    puts c.index
end