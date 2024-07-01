package main
 
import (
	"bufio"
	"os"
	"strings"
)
 
const scBufSize = 1 * 1024 * 1024 // 1MB

var sc = func() *bufio.Scanner {
  sc := bufio.NewScanner(os.Stdin)
  sc.Buffer(make([]byte, scBufSize), scBufSize)
  sc.Split(bufio.ScanWords)
  return sc
}()
var w = []string{"dream", "dreamer", "erase", "eraser"}
 
func main() {
	s := scans()
 
	if check(s) {
		os.Stdout.WriteString("YES")
		return
	}
	os.Stdout.WriteString("NO")
}
 
func scans() string {
	sc.Scan()
	return sc.Text()
}
 
func check(s string) bool {
	var b bool
	for _, v := range w {
		if v == s {
			return true
		}
		if strings.HasPrefix(s, v) {
			b = b || check(s[len(v):])
		}
	}
	return b
}