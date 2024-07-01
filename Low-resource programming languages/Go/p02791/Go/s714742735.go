package main
 
import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func scanInt() int {
	iv, _ := strconv.Atoi(scanString())
	return iv
}
 
func scanString() string {
	sc.Scan()
	return sc.Text()
}
 
func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 100001), 100001*100)
}

func main() {
  var N, A, ANS int
  N = scanInt()
  l := make([]int, N)
  ANS = N
  for i := 0; i < N; i++ {
	  A = scanInt()
	  l[i] = A
  }
  for i := 0; i < N; i++ {
    for j := 0; j <= i; j++ {
		if l[i] > l[j] {
			ANS--
			break
		}
	}
  }
  fmt.Println(ANS)
}