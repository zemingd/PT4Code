package main
 
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	A := scanInt()
	B := scanInt()
	C := scanInt()
	K := scanInt()
	for i := 0; i < K; i++ {
		if C < B {
			C = C * 2
		} else if B < A {
			B = B * 2
		}
	}
	if A < B && B < C {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
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
