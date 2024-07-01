package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n int
	var k int
	fmt.Scan(&n, &k)
	sc.Split(bufio.ScanWords)

	hates := getHates(k)

	var count int

	for i := n; i < 100000; i++ {
		if count != len(hates) {
			count = 0
			for j := 0; j < len(hates); j++ {
				str := strconv.Itoa(i)
				if !strings.Contains(str, hates[j]) {
					count++
				}
			}
		} else {
			fmt.Println(i - 1)
			return
		}
	}
}

func getHates(k int) []string {
	var hates = make([]int, k, k)

	for i := 0; i < k; i++ {
		hates[i] = nextInt()
	}

	var strHates = make([]string, len(hates), len(hates))

	for i, hate := range hates {
		strHates[i] = strconv.Itoa(hate)
	}

	return strHates
}

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
