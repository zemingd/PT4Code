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

type kv struct {
	key   int
	count int
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

	var n1max, _n1max, n2max, _n2max kv
	for k, item := range n1 {
		if item > n1max.count {
			n1max.key = k
			n1max.count = item
		} else {
			if item > _n1max.count {
				_n1max.key = k
				_n1max.count = item
			}
		}
	}

	for k, item := range n2 {
		if item > n2max.count {
			n2max.key = k
			n2max.count = item
		} else {
			if item > _n2max.count {
				_n2max.key = k
				_n2max.count = item
			}
		}
	}

	// fmt.Printf("%#v %#v %#v %#v\n", n1max, _n1max, n2max, _n2max)

	if len(n1) == 1 && len(n2) == 1 && n2max.key != n1max.key {
		fmt.Printf("%#v\n", 0)
		return
	}

	var _re1, _re2 int
	if n1max.key != n2max.key {
		for k, item := range n1 {
			if k != n1max.key {
				_re1 += item
			}
		}
		for k, item := range n2 {
			if k != n2max.key {
				_re2 += item
			}
		}
		fmt.Printf("%#v\n", _re1+_re2)
	} else {
		for k, item := range n1 {
			if k != n1max.key {
				_re1 += item
			}
		}
		for k, item := range n2 {
			if k != _n2max.key {
				_re1 += item
			}
		}

		for k, item := range n1 {
			if k != _n1max.key {
				_re2 += item
			}
		}
		for k, item := range n2 {
			if k != n2max.key {
				_re2 += item
			}
		}

		if _re1 > _re2 {
			fmt.Printf("%#v\n", _re2)
		} else {
			fmt.Printf("%#v\n", _re1)
		}
	}
}
