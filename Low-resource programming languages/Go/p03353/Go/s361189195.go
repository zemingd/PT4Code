package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	s := getString()
	l := len(s)
	k := getInt()

	ss := make([]string, 0, len(s)*k)
	for i := range s {
		for j := 1; (j <= k) && (i+j <= l); j++ {
			ss = append(ss, s[i:i+j])
		}
	}
	sort.Strings(ss)

	checker := make(map[string]bool)
	ans := make([]string, 0, k)
	for i := 0; len(ans) < k; i++ {
		if !checker[ss[i]] {
			checker[ss[i]] = true
			ans = append(ans, ss[i])
		}
	}

	fmt.Println(ans[k-1])
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
