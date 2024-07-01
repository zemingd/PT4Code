package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readFloat64() float64 {
	sc.Scan()
	f, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return f
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, m := readInt(), readInt()
	a := make([]int, n)
	sum := 0
	for i := 0; i < m; i++ {
		a[i] = readInt()
		sum += a[i]
	}
	if sum > n {
		fmt.Println("-1")
		return
	}

	fmt.Println(n - sum)
}
