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

	n := nextInt()

	var res float64

	for i := 0; i < n; i++ {
		res += 1.0 / nextFloat64()
	}
	res = 1.0 / res
	fmt.Println(res)
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

func nextFloat64() float64 {
	sc.Scan()
	f, _ := strconv.ParseFloat(sc.Text(), 64)
	return f
}
