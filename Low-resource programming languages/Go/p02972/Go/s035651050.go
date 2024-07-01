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

func main() {
	sc.Split(bufio.ScanWords)

	n := scanInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}

	b := make([]int, n)
	for i := n-1; i >= 0; i-- {
		num := i+1
		mul := 0
		for j := 1; j*num < n+1; j++ {
			mul += b[j*num-1]
		}

		if mul%2 == a[i] {
			b[i] = 0
		} else {
			b[i] = 1
		}
	}

	m := 0
	ans := make([]int, 0)
	for i := 0; i < n; i++ {
		if b[i] == 1 {
			m++
			ans = append(ans,i+1)
		}
	}

	fmt.Println(m)
	for i, e := range ans {
		fmt.Print(e)
		if i == len(ans)-1 {
			fmt.Println()
		} else {
			fmt.Print(" ")
		}
	}

	// fmt.Println(b)
	
}
