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

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n := nextInt()
	n1 := map[int]int{}
	n2 := map[int]int{}

	for i := 0; i < n; i++ {
		v := nextInt()
		if i%2 == 0 {
			n1[v]++
		} else {
			n2[v]++
		}
	}

	var n1max, _n1max, n2max, _n2max int
	for k, item := range n1 {
		if item > n1max {
			n1max = k
		} else {
			if item > _n1max {
				_n1max = k
			}
		}
	}

	for k, item := range n2 {
		if item > n2max {
			n2max = k
		} else {
			if item > _n2max {
				_n2max = k
			}
		}
	}

	// fmt.Printf("%#v %#v %#v %#v\n", n1max, _n1max, n2max, _n2max)

	var re1, re2 int
	if n1max != n2max {
		for k, item := range n1 {
			if k != n1max {
				re1 += item
			}
		}
		for k, item := range n2 {
			if k != n2max {
				re2 += item
			}
		}
		fmt.Println(re1 + re2)
	}
}
