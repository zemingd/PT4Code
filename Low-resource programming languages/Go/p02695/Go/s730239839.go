package main

import (
	"fmt"
	"math"
)

func main() {
	var n, m, q int
	fmt.Scan(&n, &m, &q)

	// 入力を受け取る
	var inputs [][]int
	for i := 0; i < q; i++ {
		var input []int
		for j := 0; j < 4; j++ {
			var num int
			fmt.Scan(&num)
			input = append(input, num)
		}
		inputs = append(inputs, input)
	}

	var nums []int
	for i := 1; i <= m; i++ {
		nums = append(nums, i)
	}

	// 正整数列を作成 1~mの間
	sequences := powerset(nums, n)

	count := 0
	for _, v := range sequences {
		tmpSum := 0
		for _, input := range inputs {
			a, b := input[0], input[1]
			if ((v[b-1]) - (v[a-1])) == input[2] {
				tmpSum += input[3]
			}
		}
		if tmpSum > count {
			count = tmpSum
		}
	}
	fmt.Println(count)
}

// 参考 : https://qiita.com/nirasan/items/54fa87378e55b7f64964#%E7%B7%8F%E5%BD%93%E3%82%8A%E3%81%A7%E7%B5%84%E3%81%BF%E5%90%88%E3%82%8F%E3%81%9B%E3%82%92%E5%88%97%E6%8C%99%E3%81%99%E3%82%8B
func powerset(nums []int, n int) [][]int {
	if len(nums) == 0 {
		return [][]int{[]int{}}
	}

	length := int(math.Pow(2, float64(len(nums))))

	var result [][]int
	for i := 0; i < length; i++ {
		bi := i
		s := []int{}
		for _, n := range nums {
			if bi%2 != 0 {
				s = append(s, n)
			}
			bi = bi / 2

		}
		if len(s) == n {
			result = append(result, s)
		}
	}
	return result
}
