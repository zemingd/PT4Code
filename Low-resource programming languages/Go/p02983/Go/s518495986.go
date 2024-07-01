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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	L, R := nextInt(), nextInt()

	// if R < 2019 {
	// 	fmt.Println(L * R)
	// }

	l := L % 2019
	r := R % 2019

	ans := 0
	if l < r {
		ans = (l % 2019) * ((l + 1) % 2019)
	} else {
		ans = (R % 2019) * ((R + 1) % 2019)
	}

	fmt.Println(ans)
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}
