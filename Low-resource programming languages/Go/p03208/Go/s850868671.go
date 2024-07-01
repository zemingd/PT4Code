package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	k := nextInt()

	h := make([]int, 0, n)
	for i := 0; i < n; i++ {
		h = append(h, nextInt())
	}

	IntReverse(h)

	re := 1000000000
	r := k - 1
	for index := 0; r < n; index++ {
		if h[r]-h[index] < re {
			re = h[r] - h[index]
		}
		// fmt.Printf("%#v %#v\n", index, r)
		r++
	}

	fmt.Println(re)
}

func IntReverse(vv []int) {
	sort.Sort(sort.IntSlice(vv))
}
