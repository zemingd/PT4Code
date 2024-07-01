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
	a := make(map[int]int, n)

	ans := true
	for i := 0; i < n; i++ {
		tmp := nextInt()
		if _, already := a[tmp]; already {
			ans = false
		} else {
			a[tmp] = 1
		}
	}

	if ans {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
