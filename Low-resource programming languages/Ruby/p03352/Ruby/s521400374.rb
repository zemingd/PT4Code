require"prime"
gets.to_i.downto(1){|k|
  u=k.prime_division.map(&:last).uniq
  u!=[1]&&u.size<2&&p(k)&&exit
}