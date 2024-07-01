N = gets.to_i
x = gets.split.map(&:to_i)
y = x.sort
m_i = N/2
m = y[m_i]
N.times do |i|
    if x[i] < m then
        puts y[m_i]
    else
        puts y[m_i-1]
    end
end