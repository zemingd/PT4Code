package main

import (
	"fmt"
)

func reverse(row []bool) {
	i := 0
	n := len(row)
	for i < n-i-1 {
		j := n - i - 1
		row[i], row[j] = row[j], row[i]
		i++
	}
}

func p(y1 int, x1 int, y2 int, x2 int, res *[]string) {
	*res = append(*res, fmt.Sprintf("%d %d %d %d\n", y1+1, x1+1, y2+1, x2+1))
}

func xor(a bool, b bool) bool {
	return a != b
}

func f(c bool, i int, row []bool, res *[]string) bool {
	odd := i%2 == 1
	W := len(row)
	if odd {
		reverse(row)
	}
	if c {
		var x int
		if odd {
			x = W - 1
		} else {
			x = 0
		}
		p(i-1, x, i, x, res)
	}
	row[0] = xor(c, row[0])
	for j := 0; j < W-1; j++ {
		x1 := j
		x2 := j + 1
		if row[j] {
			if odd {
				x1 = W - 1 - x1
				x2 = W - 1 - x2
			}
			p(i, x1, i, x2, res)
			row[j+1] = xor(row[j+1], row[j])
		}
	}
	return row[W-1]
}

func main() {
	var H int
	var W int
	fmt.Scanf("%d", &H)
	fmt.Scanf("%d", &W)
	var res []string

	c := false
	for i := 0; i < H; i++ {
		var row []bool
		for j := 0; j < W; j++ {
			var a int
			fmt.Scanf("%d", &a)
			row = append(row, a%2 == 1)
		}
		c = f(c, i, row, &res)
	}
	fmt.Println(len(res))
	for _, line := range res {
		fmt.Print(line)
	}
}
