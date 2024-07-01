package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	var n, m int
	var a, b []int

	sc.Split(bufio.ScanWords)
	n = nextInt()
	for i := 0; i < n; i++ {
		h := nextInt()
		a = append(a, h)
	}

	for i := len(a) - 1; i >= 0; i-- {
		var sum int
		for j := 2; (i+1)*j < len(a); {
			if b[(i+1)*j] == 1 {
				sum++
			}
			j++
		}
		switch a[i] {
		case 0:
			if sum%2 == 1 {
				b = append([]int{i + 1}, b...)
				m++
			}
		case 1:
			if sum%2 == 0 {
				b = append([]int{i + 1}, b...)
				m++
			}
		}

	}
	fmt.Println(m)
	for i, h := range b {
		if i == len(b)-1 {
			fmt.Printf("%v\n", h)
		} else {
			fmt.Printf("%v ", h)
		}
	}

}
