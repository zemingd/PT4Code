package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getInts(N int) []int {
	ret := make([]int, N)
	for i := 0; i < N; i++ {
		ret[i] = getInt()
	}
	return ret
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func lowerBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] >= x
	})
	return idx
}

func upperBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] > x
	})
	return idx
}

const mod = 1000000007

type pair struct {
	v, s int
}

func main() {
	sc.Split(bufio.ScanWords)
	N, K := getInt(), getInt()
	a := getInts(N)
	sort.Ints(a)
	flag := false
	mcnt := 0

	if N == K {
		ans := 1
		for _, v := range a {
			ans *= v
			ans %= mod
			if v < 0 {
				ans += mod
			}
		}
		out(ans)
		return
	}

	for i := 0; i < N; i++ {
		if a[i] >= 0 {
			flag = true
		} else {
			mcnt++
		}
	}
	if flag == false {
		// すべて負数の処理
		if K%2 == 1 {
			ans := 1
			for i := 0; i < K; i++ {
				ans *= a[N-1-i]
				ans %= mod
				if ans < 0 {
					ans += mod
				}
			}
			out(ans)
			return
		} else {
			ans := 1
			for i := 0; i < K; i++ {
				ans *= a[i]
				ans %= mod
				if ans < 0 {
					ans += mod
				}
			}
			out(ans)
			return
		}
	}
	b := make([]pair, N)
	for i := 0; i < N; i++ {
		if a[i] >= 0 {
			b[i] = pair{a[i], 1}
		} else {
			b[i] = pair{-a[i], -1}
		}
	}
	sort.Slice(b, func(i, j int) bool {
		if b[i].v == b[j].v {
			return b[i].s > b[j].s
		}
		return b[i].v > b[j].v
	})

	minus := make([]int, 0)
	plus := make([]int, 0)
	for i := 0; i < K; i++ {
		if b[i].s == -1 {
			minus = append(minus, b[i].v)
		} else {
			plus = append(plus, b[i].v)
		}
	}

	// out(b)
	// out(minus, plus)

	if len(minus)%2 == 1 {
		if len(plus) == 0 {
			for i := K; i < N; i++ {
				if b[i].s == 1 {
					plus = append(plus, b[i].v)
				}
			}
			minus = minus[:len(minus)-1]
		} else if K != N {
			if b[K].s == -1 {
				plus = plus[:len(plus)-1]
				minus = append(minus, b[K].v)
			} else {
				plus = append(plus, b[K].v)
				minus = minus[:len(minus)-1]
			}

		}
	}

	// out(minus, plus)

	ans := 1
	for _, v := range plus {
		ans *= v
		ans %= mod
	}
	for _, v := range minus {
		ans *= v
		ans %= mod
	}
	out(ans)
}
