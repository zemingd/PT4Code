package main
 
import (
	"bufio"
	"os"
	"fmt"
	"strconv"
	"math"
)
var N int
var SUM float64
var l [][2]int
var MEMO [][]int
func main() {
	var x, y int
	N = scanInt()
	MEMO = make([][]int, N)
	for i := 0; i < N; i++ {
	    MEMO[i] = make([]int, N)
	}
	l = make([][2]int, N)
	for i := 0; i < N; i++ {
		x = scanInt()
		y = scanInt()
		l[i] = [2]int {x, y}
	}
	dp(0,0,0)
	fmt.Println(SUM / float64(N))
}

func dist(a, b [2]int) float64 {
	x := (a[0] - b[0])
	y := (a[1] - b[1])
	d := x * x + y * y
	return math.Sqrt(float64(d))
}

func dp(a, b, depth int) {
	if depth == N {
		if a == N || b == N || a == b {
			return
		}
	    if MEMO[a][b] != 0 {
		    return
		}
		MEMO[a][b] = 1
		d := dist(l[a], l[b])
		SUM = SUM + d
		return
	}
	depth++
	dp(a, b, depth)
	dp(a + 1, b, depth)
	dp(a, b + 1, depth)
}
// --------------- BASE DEFINITIONS ---------------

var sc = bufio.NewScanner(os.Stdin)
 
func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
