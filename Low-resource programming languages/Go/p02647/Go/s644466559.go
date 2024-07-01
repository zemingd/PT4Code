package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	k := nextInt()
	alist := make([]int, n+1)
	count := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		alist[i] = nextInt()
	}
	for i := 0; i < k; i++ {
		for j := 0; j < n+1; j++ {

			// 照らす範囲を確定
			start := j - alist[j]
			end := j + alist[j]
			if start < 1 {
				start = 1
			}
			if end > n {
				end = n
			}
			// 照らす
			for jj := start; jj <= end; jj++ {
				count[jj]++
				//fmt.Println("no.", j, " ups: ", jj, count)
			}
		}

		// count をalistに
		for j := 0; j < n+1; j++ {
			alist[j] = count[j]
			count[j] = 0
		}
	}

	//fmt.Println(n, k, alist, count)
	for _, d := range alist[1:] {
		fmt.Printf("%d ", d)
	}
}

// ---- readfunc
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
