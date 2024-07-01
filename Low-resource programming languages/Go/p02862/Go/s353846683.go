package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func fact(x, mod int) int {
	result := 1
	for i := 0; i < x; i++ {
		result = result * (i + 1) % mod
	}
	return result
}

func swapInt(x, y int) (int, int) {
	return y, x
}

func inv(x, mod int) int {
	b := mod
	u := 1
	v := 0

	for b > 0 {
		t := x / b
		x -= t * b
		x, b = swapInt(x, b)
		u -= t * v
		u, v = swapInt(u, v)
	}
	u %= mod
	if u < 0 {
		u += mod
	}
	return u
}

func main() {
	var mod int = 1000000007

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	input := scanner.Text()
	inputList := strings.Split(input, " ")
	x, _ := strconv.Atoi(inputList[0])
	y, _ := strconv.Atoi(inputList[1])

	aNum := 0
	bNum := 0
	if (x+y)%3 != 0 || 2*x < y || 2*y < x {
		fmt.Println(0)
	} else {
		aNum = y - x + ((x+y)-(y-x)*3)/6
		bNum = x - y + ((x+y)-(x-y)*3)/6
		n := fact(aNum+bNum, mod)
		a := fact(aNum, mod)
		b := fact(bNum, mod)
		n = n * inv(a, mod) % mod
		n = n * inv(b, mod) % mod

		fmt.Println(n)
	}
}

// 1,2をA、2,1をBとすると、XYにたどり付けるAB列を作ってその並べ替えが数になる
