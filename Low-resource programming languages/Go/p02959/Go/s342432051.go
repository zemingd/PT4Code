package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func nextInt64() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	cs := make([]int64, 0, n+1)
	hs := make([]int64, 0, n)

	for i := 0; i <= n; i++ {
		cs = append(cs, nextInt64())
	}

	for i := 0; i < n; i++ {
		hs = append(hs, nextInt64())
	}

	var c int64
	for i, item := range hs {
		m := cs[i]
		if item-m <= 0 {
			c += item
		} else {
			c += m
			item = item - m
			mm := cs[i+1]
			if item-mm <= 0 {
				c += item
				cs[i+1] = mm - item
			} else {
				c += mm
				cs[i+1] = 0
			}
		}
	}

	fmt.Println(c)
}
