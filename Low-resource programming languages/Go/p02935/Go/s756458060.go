package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()
	values := make([]float64, n)
	for i := 0; i < n; i++ {
		values[i] = float64(readInt())
	}
	fmt.Println(solve(values))
}

func solve(values []float64) float64 {
	x := values[0]
	y := values[1]
	if len(values) == 2 {
		return pot(x, y)
	}
	for len(values) > 1 {
		// 最小値を２つ選ぶ
		minIndex1, min1 := min(values)
		values = remove(values, minIndex1)
		minIndex2, min2 := min(values)
		values = remove(values, minIndex2)
		// 鍋に入れた結果を戻す
		newValue := pot(min1, min2)
		values = append(values, newValue)
	}
	return values[0]
}

func pot(x, y float64) float64 {
	return (x + y) / 2
}

// スライス内の最小値を取得する
func min(nums []float64) (index int, min float64) {
	min = math.MaxFloat64
	for i, n := range nums {
		if n < min {
			index = i
			min = n
		}
	}
	return
}

// ある要素を削除したスライスを返す
func remove(nums []float64, i int) []float64 {
	return append(nums[:i], nums[i+1:]...)
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, e := strconv.Atoi(read())
	if e != nil {
		panic(e)
	}
	return i
}
