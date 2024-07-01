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

	n := nextInt()
	k := nextInt()
	plist := make([]int, n)
	for i := 0; i < n; i++ {
		plist[i] = nextInt()
	}
	sort.Sort(sort.IntSlice(plist))

	sum := 0
	for i := 0; i < k; i++ {
		sum += plist[i]
	}

	fmt.Println(sum)
}

// ---- readfunc
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
