package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
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
	a := nextInt()
	b := nextInt()
	k := nextInt()

	if a >= k {
		fmt.Printf("%d %d", a - k, b)
	} else if a + b >= k {
		fmt.Printf("0 %d", a + b - k)
	} else {
		fmt.Printf("0 0")
	}
}
