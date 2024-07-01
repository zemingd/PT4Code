package main

import (
	"fmt"
)

var N uint64
var K uint64
var R uint64
var S uint64
var P uint64
var T string

func main() {

	fmt.Scanf("%v", &N)
	fmt.Scanf("%v", &K)
	fmt.Scanf("%v", &R)
	fmt.Scanf("%v", &S)
	fmt.Scanf("%v", &P)
	fmt.Scanf("%v", &T)

	//fmt.Printf("N=%v K=%v R=%v S=%v P=%v\n", N,K,R,S,P)

	// 全部勝つパターンを作る
	win := make([]byte, len(T))
	for i := 0; i < len(T); i++ {
		switch T[i] {
		case 'r':
			win[i] = 'p'
		case 's':
			win[i] = 'r'
		case 'p':
			win[i] = 's'
		}
	}

	var score uint64

	for i := uint64(0); i < K; i++{
		score += maxScore(win, i, K)
	}

	fmt.Printf("%v\n", score)
}

func maxScore(win []byte, start uint64, step uint64) uint64 {
	var score uint64

	// 連続している所は、偶数番目を諦める
	var prev byte = ' '
	var n uint64 = 0
	for i := start; i < uint64(len(T)); i+=step {
		if win[i] == prev {
			n++
//			fmt.Printf("i=%d, win[i]=%v same as prev. n=%d\n", i, win[i], n)
		} else {
			// prevの点数を足す
			var base uint64
			switch prev {
			case 'r':
				base = R
			case 's':
				base = S
			case 'p':
				base = P
			}
			add := base * ((n + 1) / 2)
//			fmt.Printf("i=%d, prev %v same chars %d adding %v\n", i, prev, n, add)
			score += add
			prev = win[i]
			n = 1
		}
	}
	// prevの点数を足す
	var base uint64
	switch prev {
	case 'r':
		base = R
	case 's':
		base = S
	case 'p':
		base = P
	}
	add := base * ((n + 1) / 2)
	score += add
	//fmt.Printf("prev %v same chars %d adding %v. base=%v, n=%v\n", prev, n, add, base, n)
	return score

}

