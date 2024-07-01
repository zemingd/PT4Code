package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

// const (
// 	initialBufSize = bufio.MaxScanTokenSize //65536
// 	maxBufSize     = 100000
// )

func main() {
	scanner.Split(bufio.ScanWords)
	// buf := make([]byte, initialBufSize)
	// scanner.Buffer(buf, maxBufSize)

	n := nextInt()
	s := make([][]string, n)
	for i := range s {
		s[i] = make([]string, 10)
		s[i] = strings.Split(next(), "")
	}

	m := make(map[string]int)

	ans := 0
	for _, v := range s {
		sort.Strings(v)
		word := strings.Join(v, "")
		ans += m[word]
		m[word]++
	}
	fmt.Println(ans)
}

func next() string {
	scanner.Scan()
	return scanner.Text()
}
func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i
}
