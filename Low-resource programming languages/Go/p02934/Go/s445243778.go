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
	a := make([]int, n)
	b := 1
	for i := 0; i < n; i++ {
		a[i] = scanInt()
		b *= a[i]
	}

	c := 0
	for i := 0; i < n; i++ {
		c += b/a[i]
	}

	fmt.Println(float64(b)/float64(c))

}
