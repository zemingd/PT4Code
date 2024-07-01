package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	///標準入力を受け取る//////////////////////|
	scanner := bufio.NewScanner(os.Stdin)
	i := 0
	var array []int
	for scanner.Scan() {
		n, _ := strconv.Atoi(scanner.Text())
		array = append(array, n)
		if i++; i == array[0]+1 {
			break
		}
	}
	///アルゴリズム本体////////////////////////|
	// array[0]はN個受け取ることを表す
	min := array[1]
	max := array[2] - min
	// array[0]を除外, array[1]はminに格納
	for a := 2; a < array[0]+1; a++ {
		// minとarray[a]の差を格納
		if max < array[a]-min {
			max = array[a] - min
		}
		// minのほうが大きければminを更新
		if min > array[a] {
			min = array[a]
		}
	}
	///標準出力//////////////////////////////|
	fmt.Println(max)
}
