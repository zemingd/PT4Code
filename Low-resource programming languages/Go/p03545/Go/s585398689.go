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

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	n := nextInt()
	a, b, c, d := n/1000, (n/100)%10, (n/10)%10, n%10

	if a+b+c+d == 7 {
		fmt.Printf("%d+%d+%d+%d=7\n", a, b, c, d)
	} else if a+b+c-d == 7 {
		fmt.Printf("%d+%d+%d-%d=7\n", a, b, c, d)
	} else if a+b-c+d == 7 {
		fmt.Printf("%d+%d-%d+%d=7\n", a, b, c, d)
	} else if a+b-c-d == 7 {
		fmt.Printf("%d+%d-%d-%d=7\n", a, b, c, d)
	} else if a-b+c+d == 7 {
		fmt.Printf("%d-%d+%d+%d=7\n", a, b, c, d)
	} else if a-b+c-d == 7 {
		fmt.Printf("%d-%d+%d-%d=7\n", a, b, c, d)
	} else if a-b-c+d == 7 {
		fmt.Printf("%d-%d-%d+%d=7\n", a, b, c, d)
	} else if a-b-c-d == 7 {
		fmt.Printf("%d-%d-%d-%d=7\n", a, b, c, d)
	}
}
