package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()

	// 証言行列初期化
	// xがyをmat[x][y]と証言した。番兵=2
	mat := make([][]int, n+1)
	for i := 0; i < n+1; i++ {
		mat[i] = make([]int, n+1)
		for j := 0; j < n+1; j++ {
			mat[i][j] = 2
		}
	}

	al := make([]int, n)
	for i := 0; i < n; i++ {
		al[i] = nextInt()
		for j := 0; j < al[i]; j++ {
			x := nextInt() - 1
			y := nextInt()
			mat[i][x] = y
		}

	}
	ans := 0

	// 正直者リストでbit全探索
	for bit := 0; bit < (1 << n); bit++ {

		// 正直者リスト作成
		var setlist []int
		for j := 0; j < n; j++ {
			if bit&(1<<j) != 0 { // 今回ヒットした場合
				setlist = append(setlist, j)
			}
		}

		// 矛盾がないかチェック
		nomujunf := true
		//// [1]各「正直者」の、同じ人の証言について、1も0もある場合は矛盾
		// [1]各「正直者」が不親切な人に1を証言していたら矛盾
		// [2]各「正直者」が親切な人に0を証言していたら矛盾

		for j := 0; j < len(setlist); j++ {
			// 各「正直者」ごとに各証言を見ていく
			for k := 0; k < n; k++ {
				shkf, _ := hasX(k, setlist) // kは正直者かどうか
				sh := mat[setlist[j]][k]

				// 「正直だ」の証言先kが不親切な人だったら矛盾
				if (sh == 1) && (shkf == false) {
					nomujunf = false
					break
				}
				// 「不親切な人だ」の証言先kが正直者だったら矛盾
				if (sh == 0) && (shkf == true) {
					nomujunf = false
					break
				}
			}

		}

		if nomujunf == true {
			ans = max(ans, len(setlist))
		}
	}

	fmt.Println(ans)

}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func hasX(x int, plist []int) (bool, int) {
	for i, p := range plist {
		if x == p {
			return true, i
		}
	}
	return false, -1
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
func nextIntMat(a int, b int) [][]int {
	mat := make([][]int, a)
	for i := 0; i < a; i++ {
		mat[i] = make([]int, b)
		for j := 0; j < b; j++ {
			mat[i][j] = nextInt()
		}
	}
	return mat
}
