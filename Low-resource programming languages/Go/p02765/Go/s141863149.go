package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

/*
以下の入力を読み込む
入力は以下の形式で標準入力から与えられる。
N：整数
X1, X2,...,Xn :整数
*/

func input_N_Xi() (int, []int) {
	// 標準入力読み取り
	scanner := bufio.NewScanner(os.Stdin) //1行
	scanner.Scan()
	str := scanner.Text()
	n, _ := strconv.Atoi(str)
	x := make([]int, n)
	scanner.Scan()
	str = scanner.Text()

	strSplit := strings.Split(str, " ")
	for i := 0; i < n; i++ {
		x[i], _ = strconv.Atoi(strSplit[i])
	}
	return n, x
}

func main() {
	_, x := input_N_Xi()

	minX := 0

	for p := 1; p <= 100; p++ {
		tmpX := 0
		for _, _x := range x {
			tmpX += (_x - p) * (_x - p)
		}
		if p == 1 {
			minX = tmpX
		} else if tmpX < minX {
			minX = tmpX
		}

	}
	fmt.Println(minX)

}
