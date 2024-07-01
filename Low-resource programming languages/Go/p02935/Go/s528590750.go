package main
 
import (
	"bufio"
	"os"
	"strconv"
	"fmt"
	"sort"
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
	sort.Slice(L, func (i, j int) bool { return L[i] < L[j]})
	ANS = float64(L[0])
	for i := 1; i < N; i++ {
		ANS = (ANS + float64(L[i])) / float64(2)
	}
	fmt.Println(ANS)
}
