n = gets.to_i
edges = gets.split(' ').sort.map(&:to_i)

count = 0

(0..n-3).each do |i_a|
  a = edges[i_a]
  (i_a+1..n-2).each do |i_b|
    b = edges[i_b]

    # 先にソートしているので a <= b <= c
    #  a < b + c は自明で成立
    #  b < c + a も自明で成立（b - a < c が成立すれば良いが、 b <= c かつ a > 0 なので自明）
    # なので c < b + a のみテストする
    rests = edges[i_b+1..n-1]
    rests_count = rests.size
    ng_index = rests.bsearch_index{ |c| c >= b + a } # 初めて条件を満たさない c のindex

    # NG条件 c >= b + a が成立する c が存在しない場合は ng_index は nil になっている
    # この時、restsは全て c < b + a を満たすので、 rests.size 分 count を増やす
    # ng_index が存在する場合、見つかった位置（例えばng_index = 1）は c < b + a を満たす c の個数（ rests[0] のみ条件を満たすので、条件を満たすcは1個）に等しい
    # このため ng_index 分 count を増やす
    ok_edges_size = ng_index || rests.size
    count += ok_edges_size
  end
end

puts count

