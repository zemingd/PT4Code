package main

import (
	"bufio"
	"fmt"
	"os"
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
	n, m := nextInt(), nextInt()

	likes := map[int]bool{}
	for i := 0; i < m; i++ {
		likes[i] = true
	}

	for i := 0; i < n; i++ {
		k := nextInt()
		ilikes := map[int]bool{}

		for j := 0; j < k; j++ {
			ilikes[nextInt()-1] = true
		}
		for j := 0; j < m; j++ {
			likes[j] = likes[j] && ilikes[j]
		}
	}

	c := 0
	for i := 0; i < m; i++ {
		if likes[i] {
			c++
		}
	}
	fmt.Println(c)
}
