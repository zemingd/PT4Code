# coding: utf-8
class UnionFind
  def initialize(n)
    # Parent驟榊・縺ｮ隕∫ｴ縺ｯ隕ｪ縺ｮ逡ｪ蜿ｷ繧呈э蜻ｳ縺吶ｋ
    # 隕ｪ縺ｧ縺ゅｋ蝣ｴ蜷医・・・(縺昴・髮・粋縺ｮ繧ｵ繧､繧ｺ)
    # 譛蛻昴・縺吶∋縺ｦ縺ｮ繝弱・繝峨′迢ｬ遶九＠縺ｦ縺・ｋ縺薙→繧堤､ｺ縺暦ｼ悟・驛ｨ-1
    @Parent = Array.new(n, -1)
  end

  # a 縺後←縺ｮ繧ｰ繝ｫ繝ｼ繝励↓螻槭＠縺ｦ縺・ｋ縺九ｒ隱ｿ縺ｹ繧・  def root(a)
    if @Parent[a] < 0 then
      # 繝槭う繝翫せ縺ｯa閾ｪ菫｡縺瑚ｦｪ縺ｧ縺ゅｋ縺薙→繧堤､ｺ縺・      a
    else
      # 隕ｪ繧偵◆縺ｩ縺｣縺ｦ縺・″,譬ｹ蜈・・隕ｪ繧定ｦ九▽縺代ｋ
      # a 縺ｯ譬ｹ蜈・・隕ｪ縺ｮ繧ｰ繝ｫ繝ｼ繝励↓螻槭＠縺ｦ縺・ｋ縺薙→縺悟・縺九▲縺溘・縺ｧ・・      # @Parent繧呈峩譁ｰ
      @Parent[a] = root(@Parent[a])
    end
  end

  # 閾ｪ蛻・・螻槭☆繧九げ繝ｫ繝ｼ繝励・鬆らせ謨ｰ繧定ｪｿ縺ｹ繧・  # 閾ｪ蛻・・螻槭☆繧九げ繝ｫ繝ｼ繝励・鬆らせ謨ｰ 縺ｯ譬ｹ蜈・・隕ｪ縺檎衍縺｣縺ｦ縺・ｋ
  def size(a)
    -@Parent[root(a)]
  end

  # a縺ｨb繧偵￥縺｣縺､縺代ｋ
  def connect(a, b)
    # a縺ｨb繧堤峩謗･縺上▲縺､縺代ｋ縺ｮ縺ｧ縺ｯ縺ｪ縺擾ｼ梧ｹ蜈・・隕ｪ縺ｫ縺上▲縺､縺代ｌ縺ｰ繧医＞
    a = root(a)
    b = root(b)
    if a == b then
      false
    end

    # 鬆らせ謨ｰ縺ｮ螟壹＞譁ｹ繧誕縺ｨ縺暦ｼ悟ｰ代↑縺・婿b繧偵￥縺｣縺､縺代◆縺・    # 螟ｧ蟆上′騾・↑繧会ｼ後・縺｣縺上ｊ霑斐☆
    if a < b then
      a, b = b, a
    end

    # a縺ｮ繧ｵ繧､繧ｺ繧呈峩譁ｰ
    @Parent[a] += @Parent[b]
    # b縺ｮ隕ｪ繧誕縺ｫ螟画峩
    @Parent[b] = a

    true
  end
end

n, m = STDIN.gets.chomp.split(" ").map(&:to_i)
a = Array.new(0)
b = Array.new(0)

for i in 1..m
  tmpa, tmpb = STDIN.gets.chomp.split(" ").map(&:to_i)
  a.push(tmpa)
  b.push(tmpb)
end

uni = UnionFind.new(n)

ans = Array.new(m)
ans[m - 1] = n * (n - 1) / 2

(1..(m-1)).reverse_each do |i| 
  tmpa, tmpb = a[i] - 1, b[i] - 1
  if uni.root(tmpa) != uni.root(tmpb) then
    ans[i-1] = ans[i] - uni.size(tmpa) * uni.size(tmpb)
  else
    ans[i-1] = ans[i]
  end
  uni.connect(tmpa, tmpb)
end

for i in 0..(m-1)
  puts ans[i]
end
