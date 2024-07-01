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
	alist := make([]int, n)
	for i := 0; i < n; i++ {
		alist[i] = nextInt()
	}

	for i := 0; i < n; i++ {

		max := 0
		for j := 0; j < n; j++ {
			if i == j {
				continue
			}
			if max < alist[j] {
				max = alist[j]
			}
		}
		fmt.Println(max)
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
