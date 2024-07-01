package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	a := readInt64Slice(2)
	b := readInt64Slice(2)
	t := readInt64()

	if a[0] < b[0] {
		aEnd := a[0] + a[1]*t
		bEnd := b[0] + b[1]*t

		if aEnd >= bEnd {
			fmt.Println("YES")
			return
		}
		fmt.Println("NO")
		return
	}

	aEnd := a[0] - a[1]*t
	bEnd := b[0] - b[1]*t

	if aEnd <= bEnd {
		fmt.Println("YES")
		return
	}
	fmt.Println("NO")
	return

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
