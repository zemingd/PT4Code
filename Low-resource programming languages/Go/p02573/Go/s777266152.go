package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"
	"strconv"
)

var mat []map[int]bool
var visited []bool

func dfs(a, cnt int) int {
	if visited[a] {
		return cnt
	}
	visited[a] = true
	cnt++

	for b := range mat[a] {
		cnt = dfs(b, cnt)
	}

	return cnt
}

func main() {
	n, m := readInt(), readInt()
	mat = make([]map[int]bool, n)
	for i := 0; i < m; i++ {
		a, b := readInt()-1, readInt()-1
		if mat[a] == nil {
			mat[a] = make(map[int]bool)
		}
		if mat[b] == nil {
			mat[b] = make(map[int]bool)
		}
		mat[a][b] = true
		mat[b][a] = true
	}

	ans := 0
	visited = make([]bool, n)
	for i := 0; i < n; i++ {
		if visited[i] {
			continue
		}
		ans = max(ans, dfs(i, 0))
	}

	fmt.Println(ans)
}

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

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readInt() int {
	return int(readInt64())
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
