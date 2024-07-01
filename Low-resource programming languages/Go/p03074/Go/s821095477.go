package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	var S string
	fmt.Scan(&S)
	var rle []int //first is sakadachi
	prev := "1"
	length := 0

	if S[0:1] == "0" {
		prev = "0"
		rle = append(rle, 0)
	}

	for i := 0; i < N; i++ {
		if S[i:i+1] == prev {
			length++
		} else {
			rle = append(rle, length)
			length = 1
		}
		prev = S[i : i+1]
	}
	rle = append(rle, length)

	if len(rle)%2 == 0 {
		rle = append(rle, 0) //last is sakadachi
	}

	max := 0
	for j := 0; j < K; j++ {
		if len(rle) == 1 {
			max = rle[0]
			break
		}
		max = 0
		index := 0
		for i := 1; i < len(rle)-1; i += 2 {
			sum := rle[i-1] + rle[i] + rle[i+1]
			if sum > max {
				max = sum
				index = i
			}
		}
		rle = removeKey(rle, index)
		rle = removeKey(rle, index)

		rle[index-1] = max
	}

	if K == 0 {
		fmt.Println(intsMax(rle))
		return
	}

	fmt.Println(max)

}

func removeKey(numbers []int, key int) []int {
	result := []int{}
	for i, num := range numbers {
		if i != key {
			result = append(result, num)
		}
	}
	return result
}

func intsMax(nums []int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}
