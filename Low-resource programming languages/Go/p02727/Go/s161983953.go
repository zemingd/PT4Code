package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	x, y, a, b, c := nextInt(), nextInt(), nextInt(), nextInt(), nextInt()
	p, q, r := nextInts(a), nextInts(b), nextInts(c)

	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	sort.Sort(sort.Reverse(sort.IntSlice(r)))

	r = append(r, p[:x]...)
	r = append(r, q[:y]...)
	sort.Sort(sort.Reverse(sort.IntSlice(r)))

	var ans int
	for i := 0; i < x+y; i++ {
		ans += r[i]
	}

	fmt.Println(ans)
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = nextInt()
	}
	return sl
}
