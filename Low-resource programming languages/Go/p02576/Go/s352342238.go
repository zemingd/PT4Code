package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var _sw = bufio.NewScanner(os.Stdin)

func main() {
	N := NextInt()
	X := NextInt()
	T := NextInt()

	ans := (N / X) * T
	if N%X != 0 {
		ans += T
	}

	fmt.Println(ans)
}

func init() {
	_sw.Split(bufio.ScanWords)
}

func NextInt() int {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	i, e := strconv.Atoi(_sw.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func NextString() string {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	return _sw.Text()
}

func Max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func Min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func SortInts(xs []int) {
	sort.Sort(sort.IntSlice(xs))
}

func ReverseSortInts(xs []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(xs)))
}
