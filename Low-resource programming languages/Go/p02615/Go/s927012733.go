package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	as := make([]int, n)
	for i := 0; i < n; i++ {
		as[i] = nextInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(as)))

	ps := make([]int, 0)
	ans := 0
	ps = append(ps, as[0])
	for i := 1; i < n; i++ {
		p := ps[0]
		ps = ps[1:]
		ans += p

		a := as[i]
		ps = append(ps, a)
		ps = append(ps, a)
	}

	fmt.Println(ans)
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
