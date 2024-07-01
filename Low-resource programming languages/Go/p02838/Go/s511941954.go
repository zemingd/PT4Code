package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// readi Scannerから1単語取り出して数値に変換して取得する
func readi(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

// readt Scannerから1単語取り出して取得する
func readt(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	const M = 1000000007 // 10^9+7
	N := readi(sc)       // 2 <= N <= 3*10^5
	A := make([]int, N)  // 0 <= Ai <= 2^60
	for i := 0; i < N; i++ {
		A[i] = readi(sc)
	}
	ans := 0
	// Ai が取り得る値の範囲を踏まえ、２進数の各桁で計算する
	for bit := 0; bit < 60; bit++ {
		sum1bit := 0
		for i := 0; i < N; i++ {
			sum1bit += A[i] & 1 // 右端のビットが1
			A[i] >>= 1          // 右側に1桁ビットシフト
		}
		sum0bit := N - sum1bit
		total := sum1bit * sum0bit    // t <= (3/2*10^5)*(3/2*10^5) > M なので
		total %= M                    // 上の結果 > M があり得るので
		total *= (1 << uint(bit)) % M // 1<<60 = 2^60 > Mなので
		total %= M                    // 上の結果 > M があり得るので

		ans += total // Aiの現在の桁の値の合計を総和に加える
		ans %= M     // 上の結果 > M があり得るので
	}

	for i := 0; i < N-1; i++ {
		for j := i + 1; j < N; j++ {
			ans += A[i] ^ A[j]
		}
	}
	fmt.Println(ans)
}
