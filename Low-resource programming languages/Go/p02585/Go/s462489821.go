package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	sc = bufio.NewReader(os.Stdin)
)

// 17:10
func main() {
	N, K := scanInt(), scanInt()
	P := make([]int, N)
	C := make([]int, N)
	for i := 0; i < N; i++ {
		P[i] = scanInt()
	}
	for i := 0; i < N; i++ {
		C[i] = scanInt()
	}

	ans := -1000000001
	for i := 0; i < N; i++ {
		v := i
		cycleSum := 0
		cycleCnt := 0

		for {
			cycleCnt++
			cycleSum += C[v]
			v = P[v] - 1
			if v == i {
				break
			}
		}

		path := 0
		cnt := 0

		for {
			cnt++
			path += C[v]

			if cnt > K {
				break
			}

			num := (K - cnt) / cycleCnt
			score := path + max(0, cycleSum)*num
			if ans < score {
				ans = score
			}

			v = P[v] - 1
			if v == i {
				break
			}
		}
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func abs(a int) int         { return int(math.Abs(float64(a))) }
func scan(a ...interface{}) { _, err := fmt.Fscan(sc, a...); pnc(err) }
func scanStr() (s string)   { scan(&s); return }
func scanInt() int          { i, err := strconv.Atoi(scanStr()); pnc(err); return i }
func scanFloat() float64    { f, err := strconv.ParseFloat(scanStr(), 64); pnc(err); return f }
func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
