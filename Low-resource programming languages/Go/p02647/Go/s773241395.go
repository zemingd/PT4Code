package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"reflect"
	"strconv"
)

func main() {
	n := readInt64()
	k := int(readInt64())
	a := readInt64Slice(n)

	for i := 0; i < k; i++ {

		b := make([]int64, n+1)
		for j := int64(0); j < n; j++ {
			l := max(0, j-a[j])
			r := min(n, j+a[j]+1)
			b[l]++
			b[r]--
		}

		for j := int64(0); j < n; j++ {
			if j == 0 {
				continue
			}
			b[j] += b[j-1]
		}

		if reflect.DeepEqual(a, b[0:n]) {
			break
		}

		a = b[0:n]

	}

	s := fmt.Sprint(a)
	fmt.Println(string([]rune(s)[1 : len(s)-1]))
}

var (
	scanner *bufio.Scanner
)

func init() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}

func readInt64() int64 {
	var t string

	if scanner.Scan() {
		t = scanner.Text()
	}

	n, err := strconv.ParseInt(t, 10, 64)
	if err != nil {
		log.Fatal(err)
	}

	return n

}

func readInt64Slice(n int64) []int64 {
	s := make([]int64, n)
	var t string

	for i := 0; i < int(n); i++ {
		if scanner.Scan() {
			t = scanner.Text()
		}

		num, err := strconv.ParseInt(t, 10, 64)
		if err != nil {
			log.Fatal(err)
		}
		s[i] = num
	}

	return s
}

func max(x, y int64) int64 {
	if x > y {
		return x
	}
	return y
}

func min(x, y int64) int64 {
	if x < y {
		return x
	}
	return y
}
