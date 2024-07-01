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
	if n < 1 || n > 200000 {
		return
	}

	a := make([]int64, 0)
	for i := 0; i < int(n); i++ {
		a = append(a, nextInt())
	}

	ans := 0
	var i int64
	i = 1
	for _, v := range a {
		if v != i {
			ans++
		} else {
			i++
		}
	}
	if int64(ans) == n {
		ans = -1
	}
	fmt.Printf("%d\n", ans)
}

func nextInt() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 32)
	if e != nil {
		panic(e)
	}
	return i
}
