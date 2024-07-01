package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func scanIntSplit(len int) []int {
	arr := make([]int, len)
	sc.Scan()
	for i, v := range strings.Split(sc.Text(), " ") {
		v, err := strconv.Atoi(v)
		if err == nil {
			arr[i] = v
		}
	}
	return arr
}

func main() {
	var n, m int
	var a, b, c []int

	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)

	n = nextInt()
	a = scanIntSplit(n)
	b = make([]int, n+1)

	for i := len(a) - 1; i >= 0; i-- {
		var sum int
		for j := 2; (i+1)*j <= len(a); {
			if b[(i+1)*j] == 1 {
				sum++
			}
			j++
		}
		switch a[i] {
		case 0:
			if sum%2 == 1 {
				b[i+1] = 1
				c = append([]int{i + 1}, c...)
				m++
			}
		case 1:
			if sum%2 == 0 {
				b[i+1] = 1
				c = append([]int{i + 1}, c...)
				m++
			}
		}

	}
	fmt.Println(m)
	for i, h := range c {
		if i == len(c)-1 {
			fmt.Printf("%v\n", h)
		} else {
			fmt.Printf("%v ", h)
		}
	}

}

