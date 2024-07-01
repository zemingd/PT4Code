package main
 
import (
	"bufio"
	"os"
	//"sort"
	"strconv"
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

func calcmax(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func main() {
	var N, A int
	N = scanInt()
	m := map[int]int {}
    var wr = bufio.NewWriter(os.Stdout)
	for i := 0; i < N; i++ {
		A = scanInt()
		if m[A] == 0 {
			m[A]++
		} else {
			wr.WriteString("NO\n")
	        wr.Flush()
			return
		}
	}
	wr.WriteString("YES\n")
	wr.Flush()
}
