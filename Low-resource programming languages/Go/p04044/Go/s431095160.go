package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const mod = 1000000007

// 1MB
const ioBufferSize = 1 * 1024 * 1024

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

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

func main() {
	n, _ := nextInt(), nextInt()
	s := make([]string, n)
	res := ""

	for i := 0; i < n; i++ {
		s[i] = next()
	}

	sort.Strings(s)

	for i := 0; i < n; i++ {
		res += s[i]
	}

	fmt.Println(res)
}
