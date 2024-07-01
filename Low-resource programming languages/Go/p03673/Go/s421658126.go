package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}
func main() {
	var n int
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := make([]int, n)
	for i := range a {
		a[i] = nextInt(sc)
	}
	b := make([]int, 0)
	b = append(b, a[0])
	var bFront bool
	if n%2 == 0 {
		bFront = false
	}
	for i := 1; i < n; i++ {
		if bFront {
			b = append(b, a[i])
			bFront = false
		} else {
			b = append([]int{a[i]}, b...)
			bFront = true
		}
	}
	wtr := bufio.NewWriter(os.Stdout)
	for i := 0; i < len(b); i++ {
		if i > 0 {
			fmt.Fprint(wtr, " ")
		}
		fmt.Fprint(wtr, b[i])
	}
	fmt.Fprintln(wtr)
	wtr.Flush()
}
