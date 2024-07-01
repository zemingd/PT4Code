##templete
n, @A, @B, @C = gets.chomp.split(" ").map { |e| e.to_i }

@l = []
n.times do |i|
  @l[i] = gets.chomp.to_i
end

@ans = 1000000000000
@count = 0

def abs(x)
  if x < 0
    return -x
  else
    return x
  end
end

def absd(x)
  if x <= 0
    return 0
  else
   return x
  end
end


def dfs(d, v)
  if d == -1
    calc(v)
    @count += 1

    return
  end

  for i in 0..3 do
    v[d] = i
    dfs(d-1, v)
  end
end


def calc(vec)
  a = 0
  a_leng = 0
  b = 0
  b_leng = 0
  c = 0
  c_leng = 0
  n = vec.length
  for i in 0..n-1 do
    ll = vec[i]
    if ll == 0
      a += 1
      a_leng += @l[i]
    elsif ll == 1
      b += 1
      b_leng += @l[i]
    elsif ll == 2
      c += 1
      c_leng += @l[i]
    end
  end

  a_temp = a > 0 ? (a-1) * 10 + abs(a_leng - @A) : 10**9
  b_temp = b > 0 ? (b-1) * 10 + abs(b_leng - @B) : 10**9
  c_temp = c > 0 ? (c-1) * 10 + abs(c_leng - @C) : 10**9
  temp = a_temp + b_temp + c_temp
  @ans = @ans > temp ? temp : @ans
end

dfs(n-1, [])

puts @ans
