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

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = nextInt()
	}

	res := 0
	for {
		// すべての要素の高さが0になったら終了
		if maxElement(h) == 0 {
			break
		}

		// 区間分割する
		i := 0
		for i < n {
			if h[i] == 0 {
				i++
			} else {
				res++
				for i < n && h[i] > 0 {
					h[i]--
					i++
				}
			}

		}

	}

	fmt.Println(res)

	// res := make([]int, n)

	// left := 0
	// ans := 0
	// for {
	// 	// ?	fmt.Printf("%d回目 %+v\n", left, res)
	// 	if left == n {
	// 		break
	// 	}
	// 	if res[left] == h[left] {
	// 		left++
	// 	}

	// 	// var flag bool
	// 	for i := left; i < n; i++ {
	// 		if res[i] < h[i] {
	// 			res[i]++
	// 			// flag = true
	// 		} else {
	// 			break
	// 			// left++
	// 			// flag = false
	// 		}
	// 	}

	// 	ans++
	// if flag {
	// 	ans++
	// } else {
	// 	ans += h[left] - res[left]
	// 	res[left] += h[left] - res[left]
	// 	left++
	// }

	// }

	// fmt.Println(res)
	// fmt.Println(ans)
}

func maxElement(a []int) int {
	max := a[0]
	for i := 1; i < len(a); i++ {
		if max < a[i] {
			max = a[i]
		}
	}
	return max
}
