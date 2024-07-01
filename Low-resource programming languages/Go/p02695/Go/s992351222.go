package main

import (
	"fmt"
)

var n, m, q int

func main() {
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
	seq := make([]int, 0)
	sequences := make([][]int, 0)
	dfs(seq, &sequences)

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

func dfs(seq []int, sequences *[][]int) {
	if len(seq) == n {
		*sequences = append(*sequences, seq)
		return
	}

	// 1つ前の要素の数 (最初の要素の場合は1)
	var last int
	if len(seq) == 0 {
		last = 1
	} else {
		last = seq[len(seq)-1]
	}
	// last以上M以下の数を追加
	for i := last; i <= m; i++ {
		dfs(append(seq, i), sequences)
	}
}
