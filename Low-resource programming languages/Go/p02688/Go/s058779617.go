package main

import "fmt"

func main() {
	var n, k int

	fmt.Scan(&n, &k)

	getUser := make(map[int]struct{})
	delDup := make([]int, 0)

	var tmpArr []int

	for i := 0; i < k; i++ {
		var d int
		fmt.Scan(&d)

		for j := 0; j < d; j++ {
			var tmp int
			fmt.Scan(&tmp)

			tmpArr = append(tmpArr, tmp)
		}
	}

	for _, e := range tmpArr {
		_, ok := getUser[e]
		if !ok {
			getUser[e] = struct{}{}
			delDup = append(delDup, e)
		}
	}

	fmt.Println(n - len(delDup))
}
