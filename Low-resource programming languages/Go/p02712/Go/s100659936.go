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
	sum := 0
	for i := 1; i <= n; i++ {
		if i%3 != 0 && i%5 != 0 {
			sum += i
		}
	}
	fmt.Println(sum)
}
