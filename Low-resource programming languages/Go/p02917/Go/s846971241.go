package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

// 標準入力を取得するScannerのインスタンスを作成
var scanner = bufio.NewScanner(os.Stdin)

// 標準入力で各行を読み込みintとして返す
func readLine() int {
	if scanner.Scan() {
		number, _ := strconv.Atoi(scanner.Text())
		return number
	}
	return 0
}

func main() {
	// 改行区切りから単語(スペース)区切りで読み込むように変更する
	scanner.Split(bufio.ScanWords)

	// 長さN
	N := readLine()

	// 整数列B
	B := make([]int, 0, N-1)
	for i := 0; i < N-1; i++ {
		B = append(B, readLine())
	}

	// 例
	// A0 A1 A2
	//  B0 B1

	// 問題文で提示された条件 -> Aに焦点をあて、条件を分解し分かりやすくする
	// B0 >= max(A0, A1)   -> A0 <= B0 && A1 <= B0
	// B1 >= max(A1, A2)   -> A1 <= B1 && A2 <= B1

	// A0 A1 A2ごとに条件を整理する
	// A0 <= B0
	// A1 <= B0 && A1 <= B1
	//             A2 <= B1

	// Aの要素の総和として考えられる値の最大値を求めるので
	// Aの各要素が最大になるケースを考える
	// A0 <= B0             -> A0 = B0
	// A2 <= B0 && A1 <= B1 -> A1 <= min(B0, B1)
	//             A2 <= B1 -> A2 = B1

	// 整数列A
	A := make([]int, 0, N)

	// A0 A1 A2を求め整数列Aのsliceに格納する
	for i := 0; i < N; i++ {
		n := 0
		if i == 0 {
			// A0 = B0
			n = B[0] //最初の要素を取り出す
			//fmt.Printf("i=%d B[%d]=%d\n", i, i, B[i])
		} else if i == N-1 {
			// A2 = B1
			n = B[len(B)-1] // 最後の要素を取り出す
			//fmt.Printf("i=%d B[%d]=%d\n", i, len(B)-1, B[len(B)-1])
		} else {
			//  A1 <= min(B0, B1)
			n = int(math.Min(float64(B[i-1]), float64(B[i]))) // 最小値を求める
			//fmt.Printf("i=%d B[%d]=%d B[%d]=%d\n", i, i-1, B[i-1], i, B[i])
		}
		A = append(A, n)
	}

	answer := 0 // 総和 A0 A1 A2
	for _, a := range A {
		answer += a
	}
	fmt.Println(answer)
}
