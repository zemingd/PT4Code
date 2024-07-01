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
	k := nextInt()
	var l int
	l = len(strconv.FormatInt((int64)(n), k))
	fmt.Println(l)
}
