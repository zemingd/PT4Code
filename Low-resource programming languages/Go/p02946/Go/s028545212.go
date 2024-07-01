package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var k, x, start, end int
	fmt.Scan(&k)
	fmt.Scan(&x)
	if x-k+1 < -1000000 {
		start = -1000000
	} else {
		start = x - k + 1
	}
	if x+k-1 > 1000000 {
		end = 1000000
	} else {
		end = x + k - 1
	}
	for i := start; i <= end; i++ {
		fmt.Print(i)
		if i < end {
			fmt.Print(" ")
		}
	}
	fmt.Println("")

}
