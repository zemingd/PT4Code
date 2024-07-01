// main is solve AtCoder ABC110 - A
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
	a := readInt()
	b := readInt()
	c := readInt()
	l := []int{a, b, c}
	var i int
	var m int
	i, m = max(l)
	l = remove(l, i)
	fmt.Println((m * 10) + l[0] + l[1])
}

// スライス内の最大値を取得する
func max(nums []int) (index, max int) {
	max = math.MinInt64
	for i, n := range nums {
		if n > max {
			index = i
			max = n
		}
	}
	return
}

// ある要素を削除したスライスを返す
func remove(nums []int, i int) []int {
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
