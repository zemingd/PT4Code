$n, $k = gets.split.map(&:to_i)
$ai = gets.split.map(&:to_i)

# Aiの各桁（0～40くらい）のビットが立っている個数
$ci = (0..39).map{|i|
    sum = 0
    for a in $ai
        sum += 1 if (a >> i) & 1 > 0
    end
    sum
}

$x_max = 0

# ub_k : Kの最上位ビット（0～40くらい）
ub_k = 0
for i in (0..39).to_a.reverse
    if ($k >> i) & 1 > 0
        ub_k = i
        break
    end
end

def xxor(x)
    $ai.map{|a| a^x}.inject(:+)
end

# Kを気にする探索
def find(i, x)
    if i < 0
        xmax = xxor(x)
        $x_max = xmax if xmax > $x_max
        return
    end

    # i桁目に0を選ぶ
    if ($k >> i) & 1 > 0
        find2(i-1, x)  # Kのi桁目が1なので、以降は全探索
    else
        find(i-1, x)
    end

    # i桁目に1を選ぶ
    # ※Kのi桁目が0の場合は1を選べない
    if ($k >> i) & 1 > 0
        find(i-1, x | (1 << i))
    end
end

# Kを気にせず探索
def find2(i, x)
    for j in (0..i).to_a.reverse
        x = $ci[j] > $n - $ci[j] ? x : x | (1 << j)
    end
    xmax = xxor(x)
    $x_max = xmax if xmax > $x_max
end


find(ub_k, 0)
puts $x_max
