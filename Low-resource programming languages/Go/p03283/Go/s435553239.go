package main

import (
	"fmt"
)

type BinaryIndexTree struct{ BIT [][]int }

func (b *BinaryIndexTree) init(N int) {
	for i := 0; i < N; i++ {
		b.BIT[i] = make([]int, N)
	}
}

func (b *BinaryIndexTree) add(left int, right int, val int) {
	for y := left; y <= len(b.BIT); y += y & -y {
		for x := right; x <= len(b.BIT[0]); x += x & -x {
			b.BIT[y-1][x-1] += val
		}
	}
}

func (b *BinaryIndexTree) sum(left int, right int) int {
	res := 0
	for y := left; 0 < y; y -= y & -y {
		for x := right; 0 < x; x -= x & -x {
			res += b.BIT[y-1][x-1]
		}
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
		bit.add(l, r, 1)
	}
	for q := 0; q < Q; q++ {
		row := scanNums(2)
		l := row[0]
		r := row[1]
		fmt.Println(bit.sum(r, r) - bit.sum(l-1, r) - bit.sum(r, l-1) + bit.sum(l-1, l-1))
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
