package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Buffer(make([]byte, 500000), 500000)
	sc.Split(bufio.ScanWords)

	n := nextInt64()

	m := int64(0)
	for i := int64(1); i <= n; i++ {
		m += i % (i%n + 1)
	}
	fmt.Println(m)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextInt64() int64 {
	sc.Scan()
	i, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return i
}
