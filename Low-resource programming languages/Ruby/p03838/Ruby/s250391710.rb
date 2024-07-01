A,B = gets.split.map &:to_i

p case
when A == B; 0
when B >= A && A >= 0; B - A
when A <= B && B <= 0; B - A
when A == 0; B.abs + (B < 0 ? 1 : 0)
when B == 0; A.abs + (0 < A ? 1 : 0)
when A*B < 0; (B.abs - A.abs).abs + 1
when B <= A && A < 0; (B-A).abs + 2
when A >= B && B > 0; (B-A).abs + 2
end
