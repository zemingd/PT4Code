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

	as := createSortedSlice(a)
	bs := createSortedSlice(b)
	cs := createSortedSlice(c)

	sort.Ints(as)
	sort.Ints(bs)
	sort.Ints(cs)

	as = as[(len(as) - x):]
	bs = bs[(len(bs) - y):]
	all := append(as, bs...)
	sort.Ints(all)

	csIndex := len(cs) - 1
	ans := 0
	for i := 0; i < (x + y); i++ {

		if csIndex >= 0 && all[i] < cs[csIndex] {
			ans += cs[csIndex]
			csIndex--
		} else {
			ans += all[i]
		}
	}

	fmt.Println(ans)
}

func createSortedSlice(size int) []int {

	slice := make([]int, size)
	for i := 0; i < size; i++ {
		slice[i] = nextInt()
	}

	return slice
}

func nextInt() int {
	i, _ := strconv.Atoi(nextText())
	return i
}

func nextText() string {
	sc.Scan()
	return sc.Text()
}
