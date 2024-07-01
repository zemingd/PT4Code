package main

import "fmt"

func main() {
	var n, k, d, m int
	treated := []int{}
	fmt.Scan(&n, &k)
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			fmt.Scan(&m)
			exist := false
			for _, val := range treated {
				if m == val {
					exist = true
				}
			}
			if !exist {
				treated = append(treated, m)
			}
		}
	}
	fmt.Println(n - len(treated))
}
