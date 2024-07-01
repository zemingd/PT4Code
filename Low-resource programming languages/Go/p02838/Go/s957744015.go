package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const MOD = 1e9 + 7

func main() {
	sc := bufio.NewScanner(os.Stdin)
	//ns := sc.Text()
	sc.Scan()
	sc.Scan()
	as := sc.Text()

	//N, _ := strconv.Atoi(ns)
	A := make([]int, 60)
	AZ := make([]int, 60)
	for _, as := range strings.Split(as, " ") {
		a, err := strconv.Atoi(as)
		if err != nil {
			continue
		}
		for i := 0; i < 60; i++ {
			if a&(1<<uint(i)) == 0 {
				AZ[i] += 1
			} else {
				A[i] += 1
			}
		}
	}

	sum := 0
	for i := 0; i < 60; i++ {
		p := ModPow(2, i)
		sum = (sum + ModMul(ModMul(AZ[i], A[i]), p)) % MOD
	}
	fmt.Println(sum)
}

func ModPow(a, n int) int {
	var r int = 1
	for n > 0 {
		if n&1 == 1 {
			r = r * a % MOD
		}
		a = a * a % MOD
		n >>= 1
	}
	return r
}

func ModMul(a, b int) int {
	return a * b % MOD
}
