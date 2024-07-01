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
