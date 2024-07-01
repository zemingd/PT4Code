package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	n := getInt()
	xs := getIntSlice(n)

	a, b := func() (int, int) {
		tmp := make([]int, n)
		copy(tmp, xs)
		sort.Ints(tmp)
		return tmp[n/2-1], tmp[n/2]
	}()

	for _, x := range xs {
		if x <= a {
			fmt.Println(b)
		} else {
			fmt.Println(a)
		}
	}
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}
