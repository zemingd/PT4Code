  n, m, l = gets.split.map(&:to_i)
  mtx_a,mtx_b = [],[]
  mtx_c = Array.new(n){ Array.new(l){0} }

  n.times do
    mtx_a << gets.split.map(&:to_i)
  end
  
  m.times do
    mtx_b << gets.split.map(&:to_i)
  end

  n.times do | i_idx |
    m.times do | j_idx |
      l.times do | k_idx |
        mtx_c[i_idx][k_idx] += mtx_a[i_idx][j_idx] * mtx_b[j_idx][k_idx]
      end
    end
  end

  mtx_c.each{|out| puts(out.join(" "))}

