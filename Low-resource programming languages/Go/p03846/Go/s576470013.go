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

const MOD = 1000000007

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := make([]int, n)

	m := map[int]int{}

	for i := 0; i < n; i++ {
		a[i] = nextInt()
		m[a[i]]++
	}

	if n%2 == 0 {
		for k, v := range m {
			if (k%2 != 1) || (v != 2) {
				fmt.Println(0)
				return
			}
		}
	}
	ans := 1
	for k, v := range m {
		if (k == 0 && v != 1) || (k != 0 && v != 2) {
			fmt.Println(0)
			return
		}

		ans = ans * v % MOD
	}

	fmt.Println(ans)
	// if n%2 == 0 {

	// } else {
	// 	sum := int(math.Pow(2, float64(n-1/2)))

	// 	for i := n - 3; i >= 1; i-- {
	// 		sum *= i
	// 	}
	// 	fmt.Println(sum)
	// }

}
