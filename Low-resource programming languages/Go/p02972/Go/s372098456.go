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

func printInts(a []int) {
	for i, e := range a {
		if e == 0 {
			continue
		}
		fmt.Print(i+1)
		if i != len(a)-1 {
			fmt.Print(" ")
		}
	}
	fmt.Println()
}

func main() {
	sc.Split(bufio.ScanWords)
	
	n := scanInt()
	a := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}

	m := 0
	b := make([]int, n)

	for i := n; i >= 1; i-- {
		c := 0
		for j := 2; j*i < n+1; j++ {
			c += b[j*i-1]
		}

		if c%2 == a[i-1] {
			b[i-1] = 0
		} else {
			b[i-1] = 1
			m++
		}
	}

	fmt.Println(m)
	if m!=0 {
		printInts(b)
	}

}
