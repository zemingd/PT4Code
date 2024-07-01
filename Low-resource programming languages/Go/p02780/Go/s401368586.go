package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = func() *bufio.Scanner {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Split(bufio.ScanWords)
	return stdin
}()

func main() {
	// 入力
	N := intConvert(readString())
	K := intConvert(readString())

	// 計算量O(N) 期待値スライスの作成
	var piExpectValues []float64
	for i := 0; i < N; i++ {
		pi := intConvert(readString())
		piExpectValue := expectValueCalculation(pi)
		piExpectValues = append(piExpectValues, piExpectValue)
	}

	// 期待値の論理和を計算する。
	var piExpectValueCumulativeSums []float64
	piExpectValueCumulativeSums = append(piExpectValueCumulativeSums, piExpectValues[0])
	for i := 1; i < len(piExpectValues); i++ {
		cumulativSum := piExpectValueCumulativeSums[i-1] + piExpectValues[i]
		piExpectValueCumulativeSums = append(piExpectValueCumulativeSums, cumulativSum)
	}

	// 隣接するK個の期待値の合計最大値を計算する
	expectValueMaxSum := piExpectValueCumulativeSums[0]
	for i := 1; i < N-K; i++ {
		priExpectValueMaxSum := piExpectValueCumulativeSums[i+K] - piExpectValueCumulativeSums[i]
		if expectValueMaxSum < priExpectValueMaxSum {
			expectValueMaxSum = priExpectValueMaxSum
		}
	}

	// 出力
	fmt.Printf("%f", expectValueMaxSum)
}

// readString() スペース区切りで読み込んだ文字列を返す
func readString() string {
	stdin.Scan()
	return stdin.Text()
}

// intConver(string) 文字列をintに直す
func intConvert(s string) int {
	n, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return n
}

// expectValueCalculation() 1からPまでのP種類の目が等確率で出るサイコロの出目の期待値を計算する
func expectValueCalculation(num int) float64 {
	var priExpectValue float64
	priExpectValue = (1.0 + float64(num)) / 2.0
	return priExpectValue
}
