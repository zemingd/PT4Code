n = gets.to_i
v_array = gets.chomp.split(" ").map(&:to_i)

v_sliced = v_array.each_slice(2)
v_odd = v_sliced.map(&:first)
v_even = v_sliced.map(&:last)

v_odd_g = v_odd.group_by { |e| e }.sort_by { |e| - e[1].length }
v_even_g = v_even.group_by { |e| e }.sort_by { |e| - e[1].length }

if v_odd_g[0][0] != v_even_g[0][0]
    puts n - v_odd_g[0][1].length - v_even_g[0][1].length
else
    r1 = v_odd_g[0][1].length + (v_even_g[1] ? v_even_g[1][1].length : 0)
    r2 = (v_odd_g[1] ? v_odd_g[1][1].length : 0) + v_even_g[0][1].length
    puts n - [r1, r2].max
end
