/**
 * 最短経路の練習
 *
 */

package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	N, X, Y := nextInt(sc), nextInt(sc), nextInt(sc)
	
	// コスト計算「Warshall-Floyd法」
	// エッジのコストは可変でも行けるはず...
	// 参考：https://qiita.com/ta-ka/items/a023a11efe17ab097433#warshall-floyd%E6%B3%95
	distance := make([][]int, N)
	for k := 0; k < N; k++ {
		for i := 0; i < N; i++ {
			if k == 0 {
				distance[i] = make([]int, N)
				if i == (X-1) {
					distance[i][Y-1] = 1
				} else if i == (Y-1) {
					distance[i][X-1] = 1
				}
				if i > 0 {
					distance[i][i-1] = 1
				}
				if i < N-1 {
					distance[i][i+1] = 1
				}
			}
			for j := 0; j < N; j++ {
				if k == 0 {
					isSetedDistance := false
					isSetedDistance = isSetedDistance || i == j
					isSetedDistance = isSetedDistance || i == (X - 1) && j == (Y - 1)
					isSetedDistance = isSetedDistance || j == (X - 1) && i == (Y - 1)
					isSetedDistance = isSetedDistance || i == (j + 1) || i == (j - 1)
					isSetedDistance = isSetedDistance || j == (i + 1) || j == (i - 1)
					if !isSetedDistance {	
						distance[i][j] = N - 1
					}
				}
				if i > j {
					distance[i][j] = min(distance[i][j], distance[i][k] + distance[k][j])
					distance[j][i] = distance[i][j]
				} else {
					break
				}
			}
		}
	}
	
	// カウント
	count := make([]int, N-1)
	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			if i > j {
				count[distance[i][j]-1] += 1
			} else {
				break
			}
		}
	}
	
	// 表示
	for _, num := range count {
		fmt.Println(num)
	}

}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}