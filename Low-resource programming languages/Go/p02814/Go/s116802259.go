package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func lcm(a, b int) int {
	return a / gcd(a, b) * b
}

func gcd(a, b int) int {
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = nextInt(sc)
	}
	LCM := a[0] / 2
	for i := 1; i < N; i++ {
		LCM = lcm(LCM, a[i]/2)
	}
	// fmt.Println("N", N, "M", M, "a", a, "LCM", LCM)
	ans := 0
	if LCM <= M {
		if M%LCM == 0 {
			ans = M / LCM / 2
		} else {
			ans = M/LCM/2 + 1
		}
	}
	fmt.Println(ans)
}
