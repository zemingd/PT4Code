// 3パターン
// A<C<B<D ... それぞれの間でゴールできればいい "##"がなければok
// A<B<D<C ... A-C間がゴールできればいい B || B+1 =#としたときに"##"がなければok??
//					   なんかよくわからんけどB-D間に"..."があればいけそうなんだよなー
//						 -> なんかよくわからんけど駄目っぽい [A#B.#.D..#.C]
//						 なのでこれもB-Dに"##"を含まない、にした
//						 -> そうすると今度はsample2が通らない（は？ふざけないでください
//						 もう何がなんだかわからんけどAが飛び越えるB-D間をB-[D+1]にした（意味不明
// A<B<C<D ... [A.#B#C#.D]はOK B-D間, A-C間にそれぞれ"##"がなければおｋ?

package main

import (
	"fmt"
	"strings"
)

func main() {
	var N, A, B, C, D int
	fmt.Scan(&N, &A, &B, &C, &D)
	var S string
	fmt.Scan(&S)
	SS := make([]string, N+1)
	for i, c := range []rune(S) {
		SS[i+1] = string(c)
	}
	if A < C && C < B && B < D {
		if !strings.Contains(strings.Join(SS[A:C+1], ""), "##") && !strings.Contains(strings.Join(SS[B:D+1], ""), "##") {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else if A < B && B < D && D < C {
		// fmt.Printf("A-B SS[%d:%d] = %v\n", A, B+1, SS[A:B+1])
		// fmt.Printf("B-D SS[%d:%d] = %v\n", B, D+2, SS[B:D+2])
		// fmt.Printf("D-C SS[%d:%d] = %v\n", D, C+1, SS[D:C+1])
		if !strings.Contains(strings.Join(SS[A:B+1], ""), "##") && !strings.Contains(strings.Join(SS[B:D+1], ""), "##") && strings.Contains(strings.Join(SS[B:D+2], ""), "...") && !strings.Contains(strings.Join(SS[D:C+1], ""), "##") {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else if A < B && B < C && C < D {
		// fmt.Printf("A-C SS[%d:%d] = %v\n", A, C+1, SS[A:C+1])
		// fmt.Printf("B-D SS[%d:%d] = %v\n", B, D+1, SS[B:D+1])
		// ??????????????????????????????????????????????????????????????????
		if !strings.Contains(strings.Join(SS[A:C+1], ""), "##") && !strings.Contains(strings.Join(SS[C:D+1], ""), "##") && strings.Contains(strings.Join(SS[B:C+1], ""), "..") {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else {
		panic("fffffffffffffffffffffffffffffffffffff")
	}
}

// 12 1 10 4 12
// .#..###.#.#.
// 12 1 3 12 7
// .#..#..#.#..
// 10 1 5 7 10
// .#.#.#.#..
