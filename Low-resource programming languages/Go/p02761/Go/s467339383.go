package main

import (
	"fmt"
	"os"
	"strconv"
)

// https://atcoder.jp/contests/abc157/tasks/abc157_c

/*
N <= 3 なら全探索
答えとなる数は[0,999]の範囲に収まる。
なので、答えとなる数を小さい方から順番に確認していき、条件を満たすものがあれば答える。
判定の実装では、C++だとto_stringを使うと色々楽にできる。
intとstringにすると速度は犠牲になるが、実装（特に桁に対する実装）は楽になる。
今回は、制約も全部ちっちゃいので、多少無理しても問題ない。

ok := 条件を満たすか
というのを更新しながら判定する。
条件はすべて満たしている必要があるので、満たさないものがあればok = falseとするよう実装する。
判定問題では自分はよく使う記法だ。
*/

func main() {
	var N, M int

	fmt.Scanf("%d", &N)
	fmt.Scanf("%d", &M)

	scPairs := make([]pair, 0, M)

	for si := 0; si < M; si++ {
		var s, c int
		fmt.Scanf("%d", &s)
		fmt.Scanf("%d", &c)

		newPair := pair{si: s, ci: c}
		scPairs = append(scPairs, newPair)
	}

	//N <= 3 なら全探索 答えとなる数は[0,999]の範囲に収まる。
	// なので、答えとなる数を小さい方から順番に確認していき、条件を満たすものがあれば答える。
	for i := 0; i < 1000; i++ {
		s := strconv.Itoa((i))
		if len(s) != N {
			continue
		}
		ok := true
		// check ans by bit
		for j := 0; j < M; j++ {
			for si := 1; si <= N; si++ {
				if i == 702 || i == 170 {
					//fmt.Println("702")
				}
				pair := scPairs[j]
				ci := pair.get(si)
				if ci == -1 {
					continue
				}
				// bit走査 i/1, i/10, i/100....をチェック
				if s[si-1:si] != strconv.Itoa(ci) { // siciに合致しないなら判定式をくつがえす
					ok = false
				}
			}
		}
		if ok {
			fmt.Println(i)
			os.Exit(0)
		}
	}
	fmt.Println("-1")
}

type pair struct {
	si int
	ci int
}

func (p pair) get(key int) int {
	if key == p.si {
		return p.ci
	}
	return -1
}
