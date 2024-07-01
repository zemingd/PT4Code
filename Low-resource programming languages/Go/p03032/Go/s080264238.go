package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func main() {
	N := nextInt()
	K := nextInt()
	D := make([]int, N)

	for i := 0; i < N; i++ {
		D[i] = nextInt()
	}

	score := math.MinInt32

	// 操作回数
	for k := 0; k <= K; k++ {
		// 前からいくつ取り出すか？
		for k1 := 0; k1 <= k; k1++ {
			// 後ろからいくつ取り出すか？
			for k2 := 0; k2 <= k-k1; k2++ {
				// いくつ捨てるか
				k3 := k - k1 - k2
				l := make(t, k)
				j := 0
				s := 0

				// 処理
				for i := 0; i < k1; i++ {
					if j == N {
						break
					}
					l[j] = D[i]
					j++
				}
				for i := 0; i < k2; i++ {
					if j == N {
						break
					}
					l[j] = D[N-1-i]
					j++
				}
				sort.Sort(l)
				for i := 0; i < k; i++ {
					if i >= k3 {
						s += l[i]
					}
				}
				// fmt.Println(k1, k2, k3, l, s)
				if s > score {
					score = s
				}
			}
		}
	}

	fmt.Println(score)
}

type t []int

func (a t) Len() int           { return len(a) }
func (a t) Less(i, j int) bool { return a[i] < a[j] }
func (a t) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }

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
