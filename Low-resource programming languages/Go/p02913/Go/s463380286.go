// なんじゃこれ無限にわからんキレそう未知のアルゴリズムじゃね??? -> （自分にとっては）未知のアルゴリズムでした
// Zアルゴリズムとかうのをパクって貼っただけ（挙動を理解したわけではない）
// 謎のケース？により2WAが取れない

package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	var S string
	fmt.Scan(&S)
	T := make([]string, N)
	for i, c := range []rune(S) {
		T[i] = string(c)
	}
	ans := 0
	for idx := 0; idx < N; idx++ {
		TT := T[idx:]
		Z := make([]int, len(TT))
		Z[0] = len(TT)
		i, j := 1, 0
		tmp := 0
		for i < len(TT) {
			// 重なったらあかんのでi>jとする
			for i > j && i+j < len(TT) && TT[j] == TT[i+j] {
				j++
			}
			Z[i] = j
			if j == 0 {
				i++
				continue
			}
			// tmp = max(tmp, Z[i])

			k := 1
			for i+k < len(TT) && k+Z[k] < j {
				Z[i+k] = Z[k]
				k++
			}
			i += k
			j -= k
		}
		// マジで意味わかんねぇけどtmpのmaxのせいかもしれんのでわざわざここで全部見てやる
		for i := 1; i < len(Z); i++ {
			tmp = max(tmp, Z[i])
		}
		// fmt.Println(TT)
		// fmt.Println(Z)
		ans = max(ans, tmp)
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

// 10
// abcaabcabc

// 8
// abcabcab

// 10
// abcabbcabc

// 23
// sumomomomomomosumomomo

// 38
// aaababcbaababcbcabaabacbbcbaababcbbcb
