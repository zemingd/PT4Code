package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

//Util
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func absFloat64(a float64) float64 {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func maxFloat64(a, b float64) float64 {
	if a > b {
		return a
	} else {
		return b
	}
}

func minFloat64(a, b float64) float64 {
	if a > b {
		return b
	} else {
		return a
	}
}

func str2Int(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func powInt(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func isPrime(x int) bool {
	if x == 1 {
		return false
	}
	if x == 2 {
		return true
	}
	if x%2 == 0 {
		return false
	}

	b := true
	rootx := int(math.Sqrt(float64(x)))
	i := 3
	for i <= rootx {
		if x%i == 0 {
			b = false
			break
		}
		i += 2
	}
	return b
}

func PrimeFactors(n int) (pfs []int) {
	// Get the number of 2s that divide n
	for n%2 == 0 {
		pfs = append(pfs, 2)
		n = n / 2
	}

	// n must be odd at this point. so we can skip one element
	// (note i = i + 2)
	for i := 3; i*i <= n; i = i + 2 {
		// while i divides n, append i and divide n
		for n%i == 0 {
			pfs = append(pfs, i)
			n = n / i
		}
	}

	// This condition is to handle the case when n is a prime number
	// greater than 2
	if n > 2 {
		pfs = append(pfs, n)
	}

	return
}

func PrimeFactorsMap(n int) map[int]int {
	pfs := map[int]int{}
	// Get the number of 2s that divide n
	for n%2 == 0 {
		if _, ok := pfs[2]; ok {
			pfs[2]++
		} else {
			pfs[2] = 1
		}
		//pfs = append(pfs, 2)
		n = n / 2
	}

	// n must be odd at this point. so we can skip one element
	// (note i = i + 2)
	for i := 3; i*i <= n; i = i + 2 {
		// while i divides n, append i and divide n
		for n%i == 0 {
			if _, ok := pfs[i]; ok {
				pfs[i]++
			} else {
				pfs[i] = 1
			}
			n = n / i
		}
	}

	// This condition is to handle the case when n is a prime number
	// greater than 2
	if n > 2 {
		if _, ok := pfs[n]; ok {
			pfs[n]++
		} else {
			pfs[n] = 1
		}
	}

	return pfs
}

func sumInts(x []int) int {

	total := 0
	for _, v := range x {
		total += v
	}

	return total
}

func swap(a int, b int) (int, int) {
	return b, a
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {

	return a / b * gcd(a, b)

}

//Main
const (
	initialBufSize = 10000
	maxBufSize     = 1000000
	mod            = 1e9 + 7
)

var (
	sc *bufio.Scanner = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		return sc
	}()
)

func main() {
	sc.Split(bufio.ScanWords)
	N, X, Y := nextInt(), nextInt()-1, nextInt()-1

	//graph構造を定義
	graph := make([][]int, N)
	for i := 0; i < N; i++ {
		graph[i] = make([]int, 0)
		//隣接する節を追加
		if i >= 1 {
			graph[i] = append(graph[i], i-1)
		}
		if i < N-1 {
			graph[i] = append(graph[i], i+1)
		}
	}

	//XとYもつながっているので、グラフに追加
	graph[X] = append(graph[X], Y)
	graph[Y] = append(graph[Y], X)

	//distに、距離を保持する
	//dist[a][b]: ab間の距離
	dist := make([][]int, N)
	for i := 0; i < N; i++ {
		dist[i] = make([]int, N)
	}

	//BFS
	for i := 0; i < N; i++ {
		var q []int
		q = append(q, i)
		seen := make([]bool, N) //訪問済みのフラグ
		seen[i] = true
		for len(q) > 0 {
			//dequeue
			v := q[0]
			q = q[1:]
			nexts := graph[v]

			for _, next := range nexts {
				if !seen[next] {
					seen[next] = true
					dist[i][next] = dist[i][v] + 1
					q = append(q, next)
				}
			}
		}
	}

	ans := make([]int, N)
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			ans[dist[i][j]]++
		}
	}

	for i := 1; i < N; i++ {
		fmt.Println(ans[i])
	}
}
