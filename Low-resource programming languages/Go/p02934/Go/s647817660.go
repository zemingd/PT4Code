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
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	var total float64
	for i := 0; i < n; i++ {
		a := nextInt()
		total += 1 / float64(a)
	}

	ans := 1 / total
	fmt.Printf("%.6f\n", ans)
}
