package main

import (
	"bufio"
	"fmt"
	"math"
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
		for _, aa := range a {
			if aa%2 == 0 {
				fmt.Println(0)
				return

			}

			if aa != 0 {
				if m[aa] != 2 {
					fmt.Println(0)
					return
				}
			}

			if aa == 0 && m[aa] != 1 {
				fmt.Println(0)
				return
			}
		}
	}

	sum := int(math.Pow(2, float64(n/2)))

	fmt.Println(sum % MOD)
	// if n%2 == 0 {

	// } else {
	// 	sum := int(math.Pow(2, float64(n-1/2)))

	// 	for i := n - 3; i >= 1; i-- {
	// 		sum *= i
	// 	}
	// 	fmt.Println(sum)
	// }

}
