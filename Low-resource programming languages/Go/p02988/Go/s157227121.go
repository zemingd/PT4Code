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
	p := make([]int, n)

	for i := 0; i < n; i++ {
		p[i] = scanInt()
	}
	
	ans := 0

	for i := 0; i < n-2; i++ {
		if (p[i] < p[i+1] && p[i+1] < p[i+2]) || (p[i] > p[i+1] && p[i+1] > p[i+2]) {
			ans++
		}
	}

	fmt.Println(ans)
}
