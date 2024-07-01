package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	a, b, c := nextInt(), nextInt(), nextInt()

	var values = []int{a, b, c}
	returns := sort(values)

	fmt.Fprintf(out, "%d %d %d\n", returns[0], returns[1], returns[2])
}

func sort(val []int) (ret []int) {
	if len(val) < 2 {
		return val
	}

	pivot := val[0]

	left := []int{}
	right := []int{}

	for _, v := range val[1:] {
		if v > pivot {
			right = append(right, v)
		} else {
			left = append(left, v)
		}
	}

	left = sort(left)
	right = sort(right)

	ret = append(left, pivot)
	ret = append(ret, right...)

	return
}

func temp(a int, b int) (int, int) {
	return b, a
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

