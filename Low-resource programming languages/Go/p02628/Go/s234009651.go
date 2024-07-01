package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	var k int
	fmt.Scan(&k)

	p := readLineInts()

	sort.Ints(p)

	var ans int
	for i := 0; i < k; i++ {
		ans += p[i]
	}
	fmt.Println(ans)
}

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func readLineStrs() []string {
	buf := make([]byte, 0, 0)
	for {
		l, p, _ := sc.ReadLine()
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	str := string(buf)
	return strings.Split(str, " ")
}

func readLineInts() []int {
	list := readLineStrs()
	res := make([]int, len(list))
	for i, v := range list {
		pi, _ := strconv.ParseInt(v, 10, 64)
		res[i] = int(pi)
	}
	return res
}
