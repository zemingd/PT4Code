package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func main() {
	n := nextInt()
	as := make([]int, n+1)
	nn := make([]int, n+1)

	for i := 1; i <= n; i++ {
		as[i] = nextInt()
	}

	for i := n; i > 0; i-- {
		var sum int
		for j := i + i; j <= n; j += i {
			sum ^= nn[j]
		}
		nn[i] = sum ^ as[i]
	}

	ans := make([]int, 0, n+1)

	for idx, item := range nn {
		if item == 1 {
			ans = append(ans, idx)
		}
	}
	l := len(ans)
	fmt.Printf("%#v\n", l)
	if l > 0 {
		for _, item := range ans {
			fmt.Printf("%v ", item)
		}
		fmt.Println()
	}

}

func Divisors(n int) []int {
	divisors := make([]int, 0, 1000)
	end := int(math.Pow(float64(n), 0.5) + 1)
	for i := 1; i < end; i++ {
		if n%i == 0 {
			divisors = append(divisors, i)
			if v := n / i; i != n/i {
				divisors = append(divisors, v)
			}
		}

	}
	return divisors
}
