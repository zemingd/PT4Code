package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func main() {
	sc.Split(bufio.ScanWords)

	s := next()
	n := nextInt()

	ss := make(map[string]struct{})
	for i := 0; i < len(s); i++ {
		for j := i+1; j <= min(i+n, len(s)); j++ {
			ss[s[i:j]] = struct{}{}
		}
	}

	var keys []string
	for k := range ss {
		keys = append(keys, k)
	}

	sort.Strings(keys)

	fmt.Println(keys[n-1])
}