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
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n := nextInt(sc)
	a := make([]int, n)
	for i := range a {
		a[i] = nextInt(sc)
	}
	b := make([]int, n+5) // 溢れることを考えなくてすむように、大きめの配列を確保する
	for i := range b {
		b[i] = -1
	}
	left, right := n/2, n/2+1
	for i := 0; i < n; i++ {
		if n%2 == (i+1)%2 {
			b[left] = a[i]
			left--
		} else {
			b[right] = a[i]
			right++
		}
	}
	wtr := bufio.NewWriter(os.Stdout)
	for i := 0; i < len(b); i++ {
		if b[i] >= 0 {
			fmt.Fprintf(wtr, "%d ", b[i])
		}
	}
	fmt.Fprintln(wtr)
	wtr.Flush()
}
