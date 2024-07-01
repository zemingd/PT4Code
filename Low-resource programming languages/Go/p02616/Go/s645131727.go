package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var mod = int64(1e9 + 7)

func main() {
	N := nextInt()
	K := nextInt()
	An := make(ints, 0)
	Ap := make(ints, 0)
	zeros := 0

	for i := 0; i < N; i++ {
		a := nextInt64()

		if a == 0 {
			zeros++
		} else if a < 0 {
			An = append(An, a)
		} else {
			Ap = append(Ap, a)
		}
	}

	sort.Sort(Ap)
	sort.Sort(An)

	k := 0
	ans := int64(1)
	// 答えが負またはゼロになる？
	od := K%2 == 1 && (len(Ap) == 0 || even(len(An))+len(Ap) < K)
	ev := K%2 == 0 && even(len(Ap))+even(len(An)) < K
	if od || ev {
		// 負の数を偶数個と残り正の数としてもK個選べないとき
		if zeros > 0 {
			fmt.Println(0)
			return
		}
		// 負の数なのでできるだけ絶対値を小さくする
		p := 0
		n := len(An) - 1
		for k < K {
			if p >= len(Ap) || n >= 0 && abs(An[n]) < abs(Ap[p]) {
				ans = mul(ans, An[n])
				n--
				k++
			} else {
				ans = mul(ans, Ap[p])
				p++
				k++
			}
		}
	} else {
		// 正の数なのでできるだけ絶対値を大きくする
		p := len(Ap) - 1
		n := 0
		for k < K {
			// 負の数を選べる場合
			if k <= K-2 && n < len(An)-1 {
				if p < 0 || p >= 1 && (Ap[p]*Ap[p-1] < An[n]*An[n+1]) {
					ans = mul(ans, An[n])
					ans = mul(ans, An[n+1])
					k += 2
					n += 2
					continue
				}
			}
			ans = mul(ans, Ap[p])
			p--
			k++
		}
	}

	fmt.Println(ans)
}

func mul(a, b int64) int64 {
	n := ((a % mod) * (b % mod)) % mod
	if n < 0 {
		n += mod
	}
	return n
}

func even(n int) int {
	return n - n%2
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func abs(a int64) int64 {
	if a > 0 {
		return a
	}
	return -a
}

type ints []int64

func (a ints) Len() int           { return len(a) }
func (a ints) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a ints) Less(i, j int) bool { return a[i] < a[j] }

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}

func debug(args ...interface{}) {
	fmt.Fprintln(os.Stderr, args)
}
