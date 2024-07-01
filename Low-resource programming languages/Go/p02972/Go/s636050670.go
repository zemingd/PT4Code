package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	allZero := true
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if a[i] != 0 {
			allZero = false
		}
	}

	for i, x := range a {
		if i == 0 {
			if allZero {
				fmt.Println(0)
				return
			}
			continue
		}

		if i % 2 == 0 && x == 0 {
			fmt.Println(i)
			k := 0
			balls := make([]int, n / i)
			for j := i; j < n; j += i {
				if a[j] == 1 {
					balls[k] = j
					k++
				}
			}
			return
		}

		sum := 0
		k := 0
		balls := make([]int, n / i)
		for j := i; j < n; j += i {
			if a[j] == 1 {
				sum += a[j]
				balls[k] = j + 1
				k++
			}
		}
		if sum % 2 == a[i] {
			fmt.Println(i)
			fmt.Println(k)
			return
		}
	}
	fmt.Println(-1)
}
