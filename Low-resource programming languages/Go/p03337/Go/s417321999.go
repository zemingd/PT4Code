package main

import(
	"bufio"
	"strconv"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func main() {
	sc.Split(bufio.ScanWords)
	buf := make([]byte, 10000)
	sc.Buffer(buf, 300000)

	n := nextInt()
	s := nextLine()

	data := strings.Split(s, "")

	min := 1000000
	right := make([]int, n+1)
	left := make([]int, n+1)

	for i := 1; i < n; i++ {
		if data[i-1] == "W" {
			left[i] = left[i-1] + 1
		} else {
			left[i] = left[i-1]
		}
	}

	for i := n-1; i > 0; i-- {
		if data[i] == "E" {
			right[i-1] = right[i] + 1
		} else {
			right[i-1] = right[i]
		}
	}

	for i := 0; i < n; i++ {
		sum := right[i] + left[i]
		if min > sum {
			min = sum
		}
	}
	fmt.Println(min)
}
