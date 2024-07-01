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

	distance := make([][]int, N)
	for i := 0; i < N; i++ {
		distance[i] = make([]int, N)
		for j := 0; j < N; j++ {
			distance[i][j] = N  // 移動コストを最大値+1で初期化
			if i - j == 1 {
				// 隣接するノード同士のコストは 1
				distance[i][j] = 1
				distance[j][i] = 1
			}
		}
		distance[i][i] = 0
	}
	// 隣接するノード同士のコストは 1
	distance[X-1][Y-1] = 1
	distance[Y-1][X-1] = 1
	
	// コスト計算「Warshall-Floyd法」
	// 参考：https://qiita.com/ta-ka/items/a023a11efe17ab097433#warshall-floyd%E6%B3%95
	for k := 0; k < N; k++ {
		for i := 0; i < N; i++ {
			for j := 0; j < N; j++ {
				if j <= i {
					continue
				}
				distance[i][j] = min(distance[i][j], distance[i][k] + distance[k][j])
			}
		}
	}
	
	// カウント
	count := make([]int, N-1)
	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			if j <= i {
				continue
			}
			count[distance[i][j] - 1] += 1
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