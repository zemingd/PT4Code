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
	sc.Buffer(make([]byte, 500000), 500000)
	sc.Split(bufio.ScanWords)

	n := nextInt()
	v := make([]int, n)

	for i := range v {
		v[i] = nextInt()
	}

	sort.Ints(v)

	res := float64(v[0])
	for i := 1; i < n; i++ {
		res = (res + float64(v[i])) / 2.0
	}
	fmt.Println(res)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextInt64() int64 {
	sc.Scan()
	i, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return i
}
