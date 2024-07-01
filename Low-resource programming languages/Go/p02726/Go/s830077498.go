package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"
	"strconv"
)

func main() {
	n, x, y := readInt(), readInt()-1, readInt()-1

	mat := make([][]int, n)
	for i := range mat {
		mat[i] = make([]int, 0)
		if i-1 >= 0 {
			mat[i] = append(mat[i], i-1)
		}
		if i+1 < n {
			mat[i] = append(mat[i], i+1)
		}
	}
	if x != y {
		mat[x] = append(mat[x], y)
		mat[y] = append(mat[y], x)
	}

	dist := make([][]int, n)
	for i := range dist {
		dist[i] = make([]int, n)
	}

	for i := range mat {
		visited := map[int]bool{i: true}
		tos := mat[i]
		cnt := 0
		for len(visited) < n {
			cnt++
			nexts := make([]int, 0)
			for _, to := range tos {
				if visited[to] {
					continue
				}
				visited[to] = true
				dist[i][to] = cnt
				nexts = append(nexts, mat[to]...)
			}
			tos = nexts
		}
	}

	// for i := range dist {
	// 	fmt.Println(i, dist[i])
	// }

	ans := make(map[int]int)
	for i := range dist {
		for j := i + 1; j < n; j++ {
			ans[dist[i][j]]++
		}
	}

	for i := 1; i < n; i++ {
		if v, ok := ans[i]; ok {
			fmt.Println(v)
		} else {
			fmt.Println(0)
		}
	}
}

// sort ------------------------------------------------------------

type xxx struct {
	x int
}

type sortArray []xxx

func (s sortArray) Len() int           { return len(s) }
func (s sortArray) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s sortArray) Less(i, j int) bool { return s[i].x < s[j].x }

// -----------------------------------------------------------------

var (
	readString func() string
	readBytes  func() []byte
)

func init() {
	log.SetFlags(log.Lshortfile)
	readString, readBytes = newReadString(os.Stdin)
}

func newReadString(ior io.Reader) (func() string, func() []byte) {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	f1 := func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
	f2 := func() []byte {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Bytes()
	}
	return f1, f2
}

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readFloat64() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func sum(a []int) int {
	var ret int
	for i := range a {
		ret += a[i]
	}
	return ret
}

func sumFloat64(a []float64) float64 {
	var ret float64
	for i := range a {
		ret += a[i]
	}
	return ret
}

func gcd(m, n int) int {
	for m%n != 0 {
		m, n = n, m%n
	}
	return n
}

func lcm(m, n int) int {
	return m / gcd(m, n) * n
}
