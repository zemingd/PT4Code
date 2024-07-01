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
	// n := nextInt()
	var l [3]int
	for i := 0; i < n; i++ {
		l = append(l, nextInt())
	}

	fmt.Println(l[1]+l[2]-l[0])
}
