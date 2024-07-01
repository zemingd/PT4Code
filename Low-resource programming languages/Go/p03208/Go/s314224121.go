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
	k := getInt()
	hs := make([]int, n)
	for i := range hs {
		hs[i] = getInt()
	}
	sort.Ints(hs)

	ans := 1 << 60
	d := k - 1
	for i := 0; i < n-d; i++ {
		ans = min(ans, hs[i+d]-hs[i])
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
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

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}
