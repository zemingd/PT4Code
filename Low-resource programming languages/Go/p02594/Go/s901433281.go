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
 
func nextString() string {
	sc.Scan()
	return sc.Text()
}
 
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
	if N >= 30 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}