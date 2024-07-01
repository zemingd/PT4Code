/**
 * 最短経路の練習：「Warshall-Floyd法」
 * ABC160 D
 * https://atcoder.jp/contests/abc160/tasks/abc160_d
 * 
 * 期待する入力
 * N X Y
 * 3 <= N <= 2000
 * 1 <= X, Y <= N
 * X+1 < Y
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
	 
	 // 距離計算「Warshall-Floyd法」
	 // 今回、エッジの距離は全て１だが、可変でも行けるはず...
	 // 参考：https://qiita.com/ta-ka/items/a023a11efe17ab097433#warshall-floyd%E6%B3%95
	 distance := make([][]int, N)
	 counter := make([]int, N-1)
	 ks := []int{0, X-1}  // 0は隣接行列?を初期化するため
	 for index, k := range ks {
		 for i := 0; i < N; i++ {
			 if k == 0 {
				 distance[i] = make([]int, N)
				 if i == (X-1) {
					 distance[i][Y-1] = 1
				 } else if i == (Y-1) {
					 distance[i][X-1] = 1
				 }
			 }
			 for j := 0; j < i; j++ {
				 if k == 0 {
					 isSetedDistance := false
					 isSetedDistance = isSetedDistance || i == j
					 isSetedDistance = isSetedDistance || i == (X - 1) && j == (Y - 1)
					 isSetedDistance = isSetedDistance || j == (X - 1) && i == (Y - 1)
					 if !isSetedDistance {
						 distance[i][j] = i - j  // 迂回路が無い場合の距離を計算
					 }
				 }
				 distance[i][j] = min(distance[i][j], distance[i][k] + distance[k][j])
				 distance[j][i] = distance[i][j]  // 無向グラフのため、対称行列
				 if index == 1 {
					 counter[distance[i][j]-1] += 1
				 }
			 }
		 }
	 }
 
	 // 表示
	 for _, num := range counter {
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