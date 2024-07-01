// https://atcoder.jp/contests/abc134/tasks/abc134_c

package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)

	max, max2 := -1, -1
	maxi := -1

	for i := 0; i < N; i++ {
		var a int
		fmt.Scanf("%d", &a)
		if max2 <= a {
			if max <= a {
				max2, max = max, a
				maxi = i
			} else {
				max2 = a
			}
		}
	}

	for i := 0; i < N; i++ {
		if i == maxi {
			fmt.Println(max2)
		} else {
			fmt.Println(max)
		}
	}
}
