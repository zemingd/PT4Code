package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for C - Sum of product of pairs
	var N int
	fmt.Scanf("%d", &N)

	sc.Split(bufio.ScanWords)
	A := make([]int, N)
	var sum int
	for i := 0; i < N; i++ {
		A[i] = nextInt()
		sum += A[i]
		sum = sum % (int(math.Pow10(9)) + 7)
	}

	var ans int
	for i := 0; i < N; i++ {
		sum -= A[i]
		ans += (A[i] * sum) % (int(math.Pow10(9)) + 7)
		ans = ans % (int(math.Pow10(9)) + 7)
		//for j := i + 1; j < N; j++ {
		//	ans += A[i] * A[j] % (int(math.Pow10(9)) + 7)
		//	ans = ans % (int(math.Pow10(9)) + 7)
		//}
	}

	fmt.Println(ans)
}
