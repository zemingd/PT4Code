package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	as := make([]int, n)
	for i := range as {
		as[i] = getInt() - 1
	}
	bs := getIntSlice(n)
	cs := getIntSlice(n - 1)

	ans := 0
	for i, a := range as {
		ans += bs[a]

		if i > 0 {
			pa := as[i-1]
			if a == pa+1 {
				ans += cs[pa]
			}
		}
	}

	fmt.Println(ans)
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
