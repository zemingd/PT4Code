package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n, k int64
	reader := bufio.NewReaderSize(os.Stdin, 10*1024*1024)
	line1, _, _ := reader.ReadLine()
	items := strings.Split(string(line1), " ")
	n, _ = strconv.ParseInt(items[0], 10, 32)
	k, _ = strconv.ParseInt(items[1], 10, 32)
	line2, _, _ := reader.ReadLine()
	items2 := strings.Split(string(line2), " ")
	l := len(items2)
	a := make([]int, 0, l)
	for i := int64(0); i < n; i += 1 {
		tmp, _ := strconv.ParseInt(items2[i], 10, 32)
		a = append(a, int(tmp))
	}
	for i := int64(0); i < k; i += 1 {
		a = f(a, int(n))
	}

	for i := int64(0); i < n; i += 1 {
		fmt.Printf("%d", a[i])
		if i+1 < n {
			fmt.Print(" ")
		}
	}
}

func f(a []int, n int) []int {
	result := make([]int, 0, n)
	for x := 0; x < n; x += 1 {
		b := 0
		for j := 0; j < n; j += 1 {
			d := float64(a[j])
			if (float64(j)-d-0.5) <= float64(x) && float64(x) <= (float64(j)+d+0.5) {
				b += 1
			}
		}
		result = append(result, b)
	}
	return result
}
