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
	as := getSortedIS(n)
	bs := getSortedIS(n)
	cs := getSortedIS(n)
	sort.Sort(sort.Reverse(sort.IntSlice(as)))

	ans := 0
	for _, b := range bs {
		ia := sort.Search(n, func(i int) bool { return as[i] < b })
		ic := sort.Search(n, func(i int) bool { return cs[i] > b })

		ans += (n - ia) * (n - ic)
	}

	fmt.Println(ans)
}

func getSortedIS(n int) []int {
	is := getIntSlice(n)
	sort.Ints(is)
	return is
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
