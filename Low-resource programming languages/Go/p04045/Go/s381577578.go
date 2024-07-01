package main

import "fmt"
import "strings"
import "strconv"

func main() {
	var n, k int
	fmt.Scanf("%d %d")

	dList := make([]int, k)
	for i := 0; i < k; i++ {
		fmt.Scan(&dList[i])
	}

	for {
		allows := strings.Split(strconv.Itoa(n), "")

		yeah := true
		for _, a := range allows {

			tmp, _ := strconv.Atoi(a)
			if contain(dList, tmp) {
				yeah = false
				break
			}
		}

		if yeah {
			fmt.Println(n)
			break
		}

		if n == 9999 {
			fmt.Println(9999)
			break
		}

		n++
	}

}

func contain(a []int, t int) bool {
	for _, aa := range a {
		if aa == t {
			return true
		}
	}

	return false
}