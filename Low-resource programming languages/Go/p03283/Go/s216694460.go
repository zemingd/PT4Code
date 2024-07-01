package main

import (
	"fmt"
)

type BinaryIndexTree struct{ BIT [][]int }

func (b *BinaryIndexTree) init(N int) {
	for i := 0; i < N; i++ {
		b.BIT[i] = make([]int, N-i)
	}
}

func (b *BinaryIndexTree) add(left int, idx int, val int) {
	for x := idx; x <= len(b.BIT[left-1]); x += x & -x {
		b.BIT[left-1][x-1] += val
	}
}

func (b *BinaryIndexTree) sum(left int, idx int) int {
	res := 0
	for x := idx; 0 < x; x -= x & -x {
		res += b.BIT[left-1][x-1]
	}
	return res
}

func main() {
	nmq := scanNums(3)
	N := nmq[0]
	M := nmq[1]
	Q := nmq[2]
	bit := BinaryIndexTree{make([][]int, N)}
	bit.init(N)
	for m := 0; m < M; m++ {
		row := scanNums(2)
		l := row[0]
		r := row[1]
		bit.add(l, r-l+1, 1)
	}
	for q := 0; q < Q; q++ {
		ans := 0
		row := scanNums(2)
		r := row[1]
		for l := row[0]; l <= r; l++ {
			ans += bit.sum(l, r-l+1)
		}
		fmt.Println(ans)
	}
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}