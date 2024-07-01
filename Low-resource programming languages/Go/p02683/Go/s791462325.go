package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"math"
	"os"
	"strconv"
)

var n, m, x int
var a [][]int
var c []int
var ans = math.MaxInt64

func dfs(i, cc int, arr []int) {
	if i == n {
		// fmt.Println(cc, arr)
		for j := range arr {
			if arr[j] < x {
				return
			}
		}
		// fmt.Println("update")
		ans = min(ans, cc)
		return
	}

	dfs(i+1, cc, arr)

	arr2 := make([]int, m)
	copy(arr2, arr)
	for k := range a[i] {
		arr2[k] += a[i][k]
	}
	dfs(i+1, cc+c[i], arr2)
}

func main() {
	n, m, x = readInt(), readInt(), readInt()

	a = make([][]int, n)
	c = make([]int, n)
	for i := range a {
		c[i] = readInt()

		a[i] = make([]int, m)
		for j := range a[i] {
			a[i][j] = readInt()
		}
	}

	dfs(0, 0, make([]int, m))

	if ans == math.MaxInt64 {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
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
