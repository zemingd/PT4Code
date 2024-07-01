package main
 
import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}
 
//func nextString() string {
//	sc.Scan()
//	return sc.Text()
//}
 
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var N int
var ANS float64
var L []int
func main() {
	N = nextInt()
	L = make([]int, N)
	for i := 0; i < N; i++ {
		L[i] = nextInt()
	}
	l := make([]int, N)
	dp(l, 0)
	fmt.Println(ANS)
}

func dp(l []int, depth int) {
	if depth == N {
		if uniq(l) {
			ans := float64(L[l[0]])
			for i := 1; i < N; i++ {
				ans = (ans + float64(L[l[i]])) / float64(2)
			}
			ANS = max(ANS, ans)
		}
		return
	}
	depth++
	for i := 0; i < N; i++ {
		l[depth - 1] = i
		dp(l, depth)
	}
}
func uniq(l []int) bool {
	for i := 0; i < N - 1; i++ {
		for j := i + 1; j < N; j++ {
			if l[i] == l[j] {
				return false
			}
		}
	}
	return true
}

func max(a, b float64) float64 {
	if a > b {
		return a
	} else {
		return b
	}
}
