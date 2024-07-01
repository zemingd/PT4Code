package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

var count int

func calc(n int) {
	if n%2 == 0 {
		count++
		calc(n / 2)
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	n := getInt()

	for i := 0; i < n; i++ {
		a := getInt()
		calc(a)
	}
	fmt.Println(count)
}
