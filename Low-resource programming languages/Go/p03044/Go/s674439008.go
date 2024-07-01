package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	colors := make([]int, N+1) //0: undefined, 1: 黒, 2: 白

	for i := 0; i < N-1; i++ {
		uvw := scanNums(3)

		if i == 0 {
			colors[uvw[0]] = 1
		} //最初は黒

		if colors[uvw[0]] != 0 && colors[uvw[1]] == 0 { //元が定義済み、先が未定義
			if uvw[2] == 0 { //even
				colors[uvw[1]] = colors[uvw[0]]
			} else {
				if colors[uvw[0]] == 1 {
					colors[uvw[1]] = 2
				} else {
					colors[uvw[1]] = 1
				}
			}
		} else if colors[uvw[0]] == 0 && colors[uvw[1]] != 0 { //元が未定義、先が定義済み
			if uvw[2] == 0 { //even
				colors[uvw[0]] = colors[uvw[1]]
			} else {
				if colors[uvw[1]] == 1 {
					colors[uvw[0]] = 2
				} else {
					colors[uvw[0]] = 1
				}
			}
		}
	}

	for i := 0; i < N-1; i++ {
		uvw := scanNums(3)

		if colors[uvw[0]] != 0 && colors[uvw[1]] == 0 { //元が定義済み、先が未定義
			if uvw[2] == 0 { //even
				colors[uvw[1]] = colors[uvw[0]]
			} else {
				if colors[uvw[0]] == 1 {
					colors[uvw[1]] = 2
				} else {
					colors[uvw[1]] = 1
				}
			}
		} else if colors[uvw[0]] == 0 && colors[uvw[1]] != 0 { //元が未定義、先が定義済み
			if uvw[2] == 0 { //even
				colors[uvw[0]] = colors[uvw[1]]
			} else {
				if colors[uvw[1]] == 1 {
					colors[uvw[0]] = 2
				} else {
					colors[uvw[0]] = 1
				}
			}
		}
	}

	for i := 1; i <= N; i++ {
		if colors[i] == 0 {
			panic("value error")
		} else if colors[i] == 1 {
			fmt.Println(1)
		} else if colors[i] == 2 {
			fmt.Println(0)
		}
	}
}

func scanNums(length int) (nums []int) {
	var num int
	for i := 0; i < length; i++ {
		fmt.Scan(&num)
		if i == 2 {
			if num%2 == 0 {
				num = 0 //even
			} else {
				num = 1 //odd
			}
		}
		nums = append(nums, num)
	}
	return
}
