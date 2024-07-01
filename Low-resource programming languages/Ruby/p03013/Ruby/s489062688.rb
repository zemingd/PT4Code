n, m = gets.chomp.split(' ').map(&:to_i)
as = m.times.map { gets.chomp.to_i }

@ngs = {}
as.each { |pos| @ngs[pos] = 'x' }

@cnts = {}
@cnts[0] = 1

(1..n).each do |pos|
    unless @ngs[pos].nil?
        @cnts[pos] = 0
        next
    end

    if pos == 1
        @cnts[pos] = 1
        next
    end

    @cnts[pos] = @cnts[pos - 1] + @cnts[pos - 2]
end

puts @cnts[n] % (10**9 + 7)
