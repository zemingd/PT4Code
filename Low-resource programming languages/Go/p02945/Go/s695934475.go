// by https://atcoder.jp/contests/abc070/tasks/abc070_c
package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var headTmp = nextLine()
	// fmt.Println(headTmp)
	var head = strings.Split(headTmp, " ")
	// fmt.Println(head)

	var N int
	var M int
	N, _ = strconv.Atoi(head[0])
	M, _ = strconv.Atoi(head[1])
	var A []int
	var B []int
	// var BB []int
	for i := 0; i < N; i++ {
		var bodyTmp = nextLine()
		// fmt.Println(bodyTmp)

		var body = strings.Split(bodyTmp, " ")
		var a, _ = strconv.Atoi(body[0])
		var b, _ = strconv.Atoi(body[1])
		A = append(A, a)
		B = append(B, b)
		// i=1~Mまでaがiより小さいか確かめる
		// １より小さいならばbを取得
		// その中で一番大きいbを取得
	}
	// fmt.Println(B)
	// sort.Sort(sort.Reverse(sort.IntSlice(B)))
	// fmt.Println(B)
	// var resA []int
	// var resB []int
	var totalMoney int

	for j := 1; j < M+1; j++ {
		// fmt.Println("j", j)

		var maxIndex int
		var maxB int

		for i := 0; i < N; i++ {
			// fmt.Println("i", i)

			// j日後より短い中で
			if A[i] <= j {
				//　価値が最大の仕事を探す
				if B[i] > maxB {
					maxIndex = i
					// fmt.Println("maxIndex", maxIndex)

					maxB = B[i]
					// fmt.Println("maxB", maxB)
				}
				// var bb = B[i]
				// BB = append(BB, bb)
			}

		}
		// resA = append(resA, A[maxIndex])
		// resB = append(resB, maxB)

		if maxB > 0 {
			totalMoney += maxB

			B[maxIndex] = 0
			// fmt.Println("maxIndex", maxIndex)

			// fmt.Println("B", B)
		}

		// A[maxIndex] = 0
		// fmt.Println("A[maxIndex]", A[maxIndex])

		// A = delete(A, maxIndex)
		// B = delete(B, maxIndex)
		//N--
		// fmt.Println(M)
		// fmt.Println("B:", B)
		// // sort.Sort(sort.Reverse(sort.IntSlice(B)))
		// // fmt.Println("sort:", B)
		// fmt.Println("BB:", BB)
		// fmt.Println("max=", maxInt(BB))

		// B = B[1:]
		// B = append(B, 0)

		// fmt.Println("B:", B)
		// BB = nil

		// fmt.Println("A:", A)
		// fmt.Println("s:", delete(A, 0))
		// fmt.Println(totalMoney)

	}
	// fmt.Println("A:", resA)
	// fmt.Println("B:", resB)
	fmt.Println(totalMoney)

	// fmt.Println("A:", A[0])
	// fmt.Println("B:", B)

	// fmt.Println("N:", N)
	// fmt.Println("M:", M)
}

func delete(s []int, i int) []int {
	x := append(s[:i], s[i+1:]...)
	return x
}

func maxInt(a []int) int {
	sort.Sort(sort.IntSlice(a))
	return a[len(a)-1]
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}
