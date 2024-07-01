package main

// ABC112D - Partition(400)
// https://atcoder.jp/contests/abc112/tasks/abc112_d
// a1+a2+....aN = Mの整数列がある時、GCDの最大値を求めよ
// GCDをDとすると、a1=b1*D, a2=b2*D, .... aN=bN*Dとなるので、MもDの倍数(m*D)となる。
// これからDはMの約数であることがわかる(M=m*D)
// DがMの約数であるとき、a1,a2,...aN >=Dなので、M>=N*Dとなる。
// このとき、a1=a2=a3....=aN-1=D、かつaN=M-(N-1)*Dのようにaを構成することが必ずできる。
// したがって、M>=N*Dから、M/N >= Dであるため、Mの約数で、M/N以下のうちの最大のものを選べば良い

import (
	"fmt"
	"sort"
)

func divisors(n int) []int {
	r := make([]int, 0)
	for i := 1; i*i <= n; i++ {
		if n%i == 0 {
			r = append(r, i)
			if i*i != n {
				r = append(r, n/i)
			}
		}
	}
	return r
}

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	d := divisors(M)
	sort.Ints(d)
	ans := 1
	for i := 0; i < len(d); i++ {
		if d[i] <= M/N {
			ans = d[i]
		} else {
			break
		}
	}
	fmt.Println(ans)
}
