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

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	s := nextString()

	wcount := make([]int, n)
	ecount := make([]int, n)

	for i := 0; i < n; i++ {
		if s[i] == 'W' {
			if i == 0 {
				wcount[i] = 1
			} else {
				wcount[i] = wcount[i-1] + 1
			}
		} else {
			if i > 0 {
				wcount[i] = wcount[i-1]
			}
		}
		if s[len(s)-i-1] == 'E' {
			if i == 0 {
				ecount[len(s)-i-1] = 1
			} else {
				ecount[len(s)-i-1] = ecount[len(s)-i] + 1
			}
		} else {
			if i > 0 {
				ecount[len(s)-i-1] = ecount[len(s)-i]
			}
		}
	}

	//fmt.Println("wcount", wcount)
	//fmt.Println("ecount", ecount)

	ans := n + 1
	for i := 0; i < n; i++ {
		var res int
		if s[i] == 'W' {
			res = (wcount[i] - 1) + ecount[i]
		} else {
			res = wcount[i] + (ecount[i] - 1)
		}
		if res < ans {
			//fmt.Println(i, ecount, wcount)
			ans = res
		}
	}
	fmt.Println(ans)
}
