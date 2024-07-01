package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

// https://atcoder.jp/contests/abc167/tasks/abc167_c
func main() {

	var lines [][]string
	stdin := bufio.NewScanner(os.Stdin)
	for stdin.Scan() {
		lines = append(lines, strings.Split(stdin.Text(), " "))
	}

	// line 1 N札 M個 目標値
	// line over 2 値段 アルゴ理解度......
	books, _ := strconv.Atoi(lines[0][0])
	algo, _ := strconv.Atoi(lines[0][1])
	target, _ := strconv.Atoi(lines[0][2])

	var datas [][]int
	for i := 1; i < len(lines); i++ {
		var data []int
		for _, v := range lines[i] {
			num, _ := strconv.Atoi(v)
			data = append(data, num)
		}
		datas = append(datas, data)
	}

	// results[i][0] 金額, results[i][1....] 各アルゴの理解度
	// i は i番目の結果
	var results [][]int

	n := books
	// bitsがn個の要素の各パターンを表す
	for bits := 0; bits < (1 << uint64(n)); bits++ {
		// bitsの各要素についてのループ
		result := make([]int, algo + 1)
		for i := 0; i < n; i++ {
			// bitsのi個目の要素の状態がonかどうかチェック
			if (bits>>uint64(i))&1 == 1 {
				// 何かしらの処理
				for j, v := range datas[i] {
					result[j] += v
				}
			}
		}
		ok := true
		for _, v := range result {
			if v < target {
				ok = false
				break
			}
		}
		if ok {
			results = append(results, result)
		}
	}

	if len(results) == 0 {
		fmt.Println(-1)
	} else {
		sort.Slice(results, func(i, j int) bool {
			if results[i][0] <= results[j][0] {
				return true
			} else {
				return false
			}
		})
		fmt.Println(results[0][0])
	}

}
