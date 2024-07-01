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
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var values = []int64{}
	var q = []int{}
	n, k := nextInt(), nextInt()
	for i := 0; i < n; i++ {
		q = append(q, nextInt())
	}
	for {
		if len(q) < 2 {
			break
		}
		top := q[0]
		for i := 1; i < len(q); i++ {
			v := q[i]
			values = append(values, int64(top*v))
		}
		q = q[1:]
	}
	sort.Slice(values, func(i, j int) bool {
		return values[i] < values[j]
	})
	fmt.Println(values[k-1])
}
