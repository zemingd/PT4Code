package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
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
	m := make([]map[string]int, n)
	for i := range m {
		m[i] = map[string]int{}
		s := next()
		a := strings.Split(s, "")
		for _, v := range a {
			m[i][v]++
		}
	}

	ans := 0
	for i := range m {
		for j := i + 1; j < n; j++ {
			if reflect.DeepEqual(m[i], m[j]) {
				ans++
			}
		}
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
