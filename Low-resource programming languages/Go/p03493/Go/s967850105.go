package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

/* 一つ読み */
func scanText() string {
	sc.Scan()
	return sc.Text()
}
func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}
func scanFloat() float64 {
	sc.Scan()
	a, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		fmt.Println(err)
	}
	return a
}

/* 複数読み */
func scanTextSlice(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = scanText()
	}
	return a
}
func scanSlice(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}
func scanFloatSlice(n int) []float64 {
	a := make([]float64, n)
	for i := 0; i < n; i++ {
		a[i] = scanFloat()
	}
	return a
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	t := scanText()
	// t := "aaa"
	x := 0
	for i := 0; i < len(t); i++ {
		// break
		if t[i] == '1' {
			x++
		}
	}
	fmt.Println(x)

}