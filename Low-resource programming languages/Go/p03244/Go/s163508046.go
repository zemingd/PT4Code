package main

import (
	"fmt"
	"os"
)

func main() {
	var n int
	fmt.Scan(&n)
	v := scanNums(n)
	fmt.Printf("%d\n", solve(v))
}

//偶数個の要素をもつslice vについて
//v[i] = v[i+2], v[i]の数字の種類は2種類のみをみたすようにするとき、数を変えたいとき、
//最小の操作数を求める
//3 1 3 2 -> 1を2に変えるだけなので、1
//105 119 105 119 105 119 -> 1回も変える必要がないので0
//1 1 1 1 -> 1を2回変える必要があるので、2
func solve(v []int) (count int) {
	n := len(v)
	half := n / 2
	seta := make(map[int]int)
	setb := make(map[int]int)

	//順番に分ける
	for i := 0; i < n; i = i + 2 {
		seta[v[i]] += 1
		setb[v[i+1]] += 1
	}
	//debug("seta=%v\n", seta)
	//debug("setb=%v\n", setb)

	//両方同じ数字
	if len(seta) == 1 && len(setb) == 1 {
		if v[0] == v[1] {
			count = half
			return
		} else {
			count = 0
			return
		}
	}

	//全パターンの探索
	minCount := -1
	//minA := -1
	//minB := -1
	//ca, cbの値が総じて小さいときseta, setbの数が大きくなるからパターンマッチが大変になる。
	for a, ca := range seta {
		for b, cb := range setb {
			//debug("(a,b)=(%d,%d)\n", a, b)
			c := 0
			if a != b {
				c = n - ca - cb
			}
			if c < minCount || minCount < 0 {
				minCount = c
				//minA = a
				//minB = b
			}
		}
	}
	if minCount > 0 {
		//debug("a, b = %d %d\n", minA, minB)
		count = minCount
	}
	return
}

/**
 * １行に空白区切りで数字を読み込み
 */
func scanNums(len int) (nums []int) {
	nums = make([]int, len)
	for i := 0; i < len; i++ {
		fmt.Scan(&nums[i])
	}
	return
}

const DEBUG_ENABLE = false

func debug(format string, a ...interface{}) (n int, err error) {
	if DEBUG_ENABLE {
		return fmt.Fprintf(os.Stdout, format, a...)
	} else {
		return 0, nil
	}
}
