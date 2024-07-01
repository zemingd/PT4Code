package main

import (
	"bufio"
	"os"
	"strconv"
)

func main() {
	//入力を受け取る
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	//スライスにレンガの値を格納する
	slice := make([]int, 0, N)
	num := 0
	for i := 0; i < N; i++ {
		sc.Scan()
		ai, _ := strconv.Atoi(sc.Text())
		slice = append(slice, ai)
		if ai == num+1 {
			num++
		}
	}

	//砕くレンガの数を計算
	ans := -1
	if num != 0 {
		ans = N - num
	}

	//結果を出力する
	writer := bufio.NewWriter(os.Stdout)
	writer.WriteString(strconv.Itoa(ans))
	writer.Flush()
}
