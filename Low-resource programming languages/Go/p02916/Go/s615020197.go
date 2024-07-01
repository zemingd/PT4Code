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
	blist := make([]int, n)
	clist := make([]int, n)
	bsum := 0
	for i := 0; i < n; i++ {
		alist[i] = nextInt()
	}
	for i := 0; i < n; i++ {
		blist[i] = nextInt()
		bsum += blist[i]
	}
	for i := 0; i < n-1; i++ {
		clist[i] = nextInt()
	}
	for i := 1; i < n; i++ {
		if alist[i]-alist[i-1] == 1 {
			bsum += clist[alist[i-1]-1]
		}
	}

	fmt.Println(bsum, clist)
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
