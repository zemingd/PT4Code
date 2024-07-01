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
	A := make(ints, N)
	nn := 0
	np := 0

	for i := 0; i < N; i++ {
		A[i] = nextInt64()

		if A[i] <= 0 {
			nn++
		}
		if A[i] > 0 {
			np++
		}
	}

	sort.Sort(A)

	k := 0
	ans := int64(1)

	// 答えが負になる？
	if K%2 == 1 && np == 0 {
		for i := 0; i < K; i++ {
			ans = mul(ans, A[nn-1-i])
		}
		fmt.Println(ans)
		return
	}
	// 正の数なのでできるだけ絶対値を大きくする
	p := len(A) - 1
	n := 0
	for k < K {
		// 負の数を選べる場合
		if k <= K-2 && A[n]*A[n+1] > A[p]*A[p-1] {
			ans = mul(ans, A[n])
			ans = mul(ans, A[n+1])
			k += 2
			n += 2
		} else {
			ans = mul(ans, A[p])
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
