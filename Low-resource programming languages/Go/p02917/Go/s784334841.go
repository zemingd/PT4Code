package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	x := 0
	var B []int
	B = append(B, 10000000)
	for i := 0; i < n-1; i++ {
		x = nextInt()
		B = append(B, x)
	}
	B = append(B, 10000000)

	// fmt.Println(B)

	var a int
	var c int
	for i := 0; i < n; i++ {
		if B[i] > B[i+1] {
			a = B[i+1]
		} else {
			a = B[i]
		}
		// fmt.Println(a)

		c += a
	}
	fmt.Println(c)
}
