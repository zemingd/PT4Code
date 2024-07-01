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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	s := next()

	m := 1<<63 - 1
	for i := 0; i < len(s)-2; i++ {
		ss, _ := strconv.Atoi(s[i : i+3])
		if m > abs(ss-753) {
			m = abs(ss - 753)
		}
	}

	fmt.Println(m)
}
