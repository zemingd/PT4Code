package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	x, y, a, b, c := nextInt(), nextInt(), nextInt(), nextInt(), nextInt()
	p := make([]int, a)
	q := make([]int, b)
	r := make([]int, c)
	for i := range p {
		p[i] = nextInt()
	}
	for i := range q {
		q[i] = nextInt()
	}
	for i := range r {
		r[i] = nextInt()
	}

	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	sort.Sort(sort.Reverse(sort.IntSlice(r)))

	r = append(r, p[0:x]...)
	r = append(r, q[0:y]...)
	sort.Sort(sort.Reverse(sort.IntSlice(r)))

	var ans int
	for i := 0; i < x+y; i++ {
		ans += r[i]
	}

	fmt.Println(ans)
}
