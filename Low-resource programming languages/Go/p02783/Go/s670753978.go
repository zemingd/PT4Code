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
	h := nextInt()
	a := nextInt()
	if (h % a == 0) {
		fmt.Printf("%d", h / a)
	} else {
		fmt.Printf("%d", (h + a) / a)
	}
}
