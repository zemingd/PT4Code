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
	m := nextInt()
	hlist := make([]int, n+1)
	alist := make([]int, m+1)
	blist := make([]int, m+1)
	goodlist := make([]int, n+1)
	var i, omen int

	for i = 1; i <= n; i++ {
		hlist[i] = nextInt()
	}
	for i = 1; i <= m; i++ {
		alist[i] = nextInt()
		blist[i] = nextInt()
		//fmt.Println("hlist[alist[i]], hlist[blist[i]]", hlist[alist[i]], hlist[blist[i]])
		if hlist[alist[i]] <= hlist[blist[i]] {
			goodlist[alist[i]] = -1
		}
		if hlist[alist[i]] >= hlist[blist[i]] {
			goodlist[blist[i]] = -1
		}
	}

	//fmt.Println(goodlist)
	for i = 0; i <= n; i++ {
		if goodlist[i] == -1 {
			omen++
		}
	}
	fmt.Println(n - omen)
}
