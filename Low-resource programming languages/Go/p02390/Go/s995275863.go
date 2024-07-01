package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	hh := n / (60 * 60)
	mm := n % (60 * 60) / 60
	ss := n % (60 * 60) % 60
	fmt.Printf("%d:%d:%d\n",hh, mm, ss)
}
