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
	LCMa, LCMb := a[0]/2, a[0]
	for i := 1; i < N; i++ {
		LCMa = lcm(LCMa, a[i]/2)
		LCMb = lcm(LCMb, a[i])
	}
	// fmt.Println("N", N, "M", M, "a", a, "LCMa", LCMa, "LCMb", LCMb)
	var ans int
	if LCMa <= M {
		ans = (M-LCMa)/LCMb + 1
	}
	fmt.Println(ans)
}
