package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	
	n := scanInt()
	// a := make([]int, n)
	b := 0.0
	for i := 0; i < n; i++ {
		a := scanInt()
		b += 1.0/float64(a)
	}

	fmt.Println(1.0/b)

}
