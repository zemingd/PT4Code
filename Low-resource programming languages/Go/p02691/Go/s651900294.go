// i<j -> j-i = A[i]+A[j] -> j-A[j] = A[i] + i
// なんか解説もtwtterでも解説記事でもぜんぜんわからんかったんだけど
// https://www.cnblogs.com/prjruckyone/p/12825560.html
// を読んだら分かった ありがとう 謝謝 暴力即可

package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		var V int
		fmt.Scan(&V)
		A[i] = V
	}
	X, Y := make(map[int]int), make(map[int]int)
	for i := 1; i <= N; i++ {
		x := A[i-1] + i
		y := i - A[i-1]
		X[x] += 1
		Y[y] += 1
	}
	ans := 0
	for k, v := range X {
		ans += Y[k] * v
	}
	fmt.Println(ans)
}
