package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	n := readInt64()
	k := int(readInt64())
	a := readInt64Slice(n)

	ans := map[int]map[int]bool{}

	for i := 0; i < int(n); i++ {
		ans[i] = map[int]bool{i: true}
	}

B:
	for i := 0; i < k; i++ {

		count := 0
		for _, v := range a {
			if v == n {
				count++
			}
			// fmt.Println(v, count)
			if count == int(n) {
				break B
			}

		}

		for j, v := range a {
			for l := j - int(v); l <= j+int(v); l++ {
				if ans[l][j] == true {
					continue
				}
				if l < 0 {
					continue
				}
				if l >= int(n) {
					continue
				}
				if l == j {
					continue
				}
				ans[l][j] = true
			}
		}

		for j := range a {
			a[j] = int64(len(ans[j]))
		}
		// fmt.Println(a)
		// for i, v := range ans {
		// 	fmt.Printf("%d: %+v\n", i, v)
		// }

	}

	for _, v := range a {
		fmt.Print(v, " ")
	}
	fmt.Println()

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
