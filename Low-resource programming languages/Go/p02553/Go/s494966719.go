package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	var max int
	a, b, c, d := nextInt(), nextInt(), nextInt(), nextInt()

	max = a * c

	ad := a * d
	if max < ad {
		max = ad
	}

	bc := b * c
	if max < bc {
		max = bc
	}

	bd := b * d
	if max < bd {
		max = bd
	}

	fmt.Fprintf(out, "%d\n", max)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func quickSort(val []int) []int {
	if len(val) < 2 {
		return val
	}

	pivot := val[0]

	left := []int{}
	right := []int{}

	for _, v := range val[1:] {
		if pivot > v {
			left = append(left, v)
		} else {
			right = append(right, v)
		}
	}

	left = quickSort(left)
	right = quickSort(right)

	ret := append(left, pivot)
	ret = append(ret, right...)

	return ret
}
