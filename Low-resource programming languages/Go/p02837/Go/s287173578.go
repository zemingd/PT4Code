package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	shogen := make([][]int, N)
	for i := 0; i < N; i++ {
		shogen[i] = make([]int, N)
		for j := 0; j < N; j++ {
			shogen[i][j] = -1
		}
		var n int
		fmt.Scan(&n)
		for j := 0; j < n; j++ {
			var x, y int
			fmt.Scan(&x, &y)
			x--
			shogen[i][x] = y // 人iからみて人jはy(1:正直,0:不正直)
		}
	}
	maxhonests := 0
	for bits := 0; bits < (1 << uint(N)); bits++ { // 正直な人を決め打って全探索する
		ok := true               // この正直者達の組み合わせで矛盾は生じないか？
		for i := 0; i < N; i++ { // bitsに含まれる正直者の証言をチェックする
			if (bits & (1 << uint(i))) != 0 { // 人iは正直である
				for j := 0; j < N; j++ { // 人iの全ての証言を調べる
					if (shogen[i][j] == 1 && !isHonest(bits, j)) ||
						(shogen[i][j] == 0 && isHonest(bits, j)) {
						// 人iは人jを正直と証言しているが正直者リストに含まれていない、あるいは
						// 人iは人jを不正直と証言しているが、正直者リストに含まれている。
						ok = false // このbitsは矛盾する
					}
				}
			}
		}
		if ok { // 矛盾が生じない場合の正直者の人数を数える
			maxhonests = max(maxhonests, bcount(bits))
		}
	}
	fmt.Println(maxhonests)
}

func isHonest(honests, j int) bool {
	if (honests & (1 << uint(j))) != 0 {
		return true
	}
	return false
}

func bcount(b int) int {
	r := 0
	for b > 0 {
		if (b & 1) != 0 {
			r++
		}
		b /= 2
	}
	return r
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
