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

func main() {
	N := nextInt()
	ANS := 0
	l := make([]int, N)
	for i := 0; i < N - 1; i++ {
		l[i] = nextInt()
	}
	for i := 0; i < N - 2; i++ {
		ANS = ANS + min(l[i], l[i+1])
	}
	ANS = ANS + l[N-2] + l[0]
	fmt.Println(ANS)
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
