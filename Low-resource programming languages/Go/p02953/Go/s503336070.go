package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	hs := getIntSlice(n)

	ans := "Yes"
	for i := 1; i < n; i++ {
		if hs[i]-1 >= hs[i-1] {
			hs[i]--
		} else if hs[i] < hs[i-1] {
			ans = "No"
		}
	}

	fmt.Println(ans)
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// tmp := 200001
	// sc.Buffer(make([]byte, tmp), tmp)
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
