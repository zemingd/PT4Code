package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// 参考: https://mickey24.hatenablog.com/entry/bufio_scanner_line_length
const (
	// 初期バッファサイズ
	initialBufSize = 10000
	// バッファサイズの最大値。Scannerは必要に応じこのサイズまでバッファを大きくして各行をスキャンする。
	// この値がinitialBufSize以下の場合、Scannerはバッファの拡張を一切行わず与えられた初期バッファのみを使う。
	maxBufSize = 100000000
)

// stringToInt はstring型のスライスをint型のスライスにキャストする関数
func stringToInt(tSlice []string) (rSlice []int) {
	for _, str := range tSlice {
		num, _ := strconv.Atoi(str)
		rSlice = append(rSlice, num)
	}
	return
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	// 何も指定しないままスキャンすることもできるが、
	// 一行の長さが一定以上になると自動的にスキャンがストップするので、
	// 最小、最大バッファサイズを指定してスキャンを継続させる
	buf := make([]byte, initialBufSize)
	scanner.Buffer(buf, maxBufSize)

	scanner.Scan()
	var braveStr string = scanner.Text()
	brave, _ := strconv.Atoi(braveStr)

	scanner.Scan()
	var monsterRemain []int = stringToInt(strings.Split(scanner.Text(), " "))

	scanner.Scan()
	var canKill []int = stringToInt(strings.Split(scanner.Text(), " "))

	var killedTotal int = 0
	for i := 0; i < brave; i++ {
		// 勇者iが街iのモンスターを全員倒せるなら
		if canKill[i] >= monsterRemain[i] {
			// 勇者iの倒せる数から、街iのモンスターを引く
			canKill[i] -= monsterRemain[i]
			// 街iのモンスターを全員倒し、トータルに加算
			killedTotal += monsterRemain[i]
			monsterRemain[i] = 0
		} else {
			// 倒せるだけ倒し、トータルに加算
			monsterRemain[i] -= canKill[i]
			killedTotal += canKill[i]
			// 倒し切ったので、残力を0に
			canKill[i] = 0
		}

		// fmt.Println("1ターン終了後の残気:", canKill[i])

		// まだ倒せるんなら、街i+1のモンスターも倒せるだけ倒す！
		if canKill[i] > 0 {
			// 勇者iが街i+1のモンスターを全員倒せるなら
			if canKill[i] >= monsterRemain[i+1] {
				// 街i+1のモンスターを全員倒し、トータルに加算
				killedTotal += monsterRemain[i+1]
				monsterRemain[i+1] = 0
			} else {
				// 倒せるだけ倒し、トータルに加算
				monsterRemain[i+1] -= canKill[i]
				killedTotal += canKill[i]
				// 倒し切ったので、残力を0に
				canKill[i] = 0
			}
		}

		// fmt.Println("\n現在の勇者番号:", i)
		// fmt.Println("現在の残っているモンスター:", monsterRemain)
		// fmt.Println("現在の勇者の残気:", canKill)
		// fmt.Println("現在の倒したモンスター数:", killedTotal)
	}

	fmt.Println(killedTotal)
	// fmt.Println("\n現在の残っているモンスター:", monsterRemain)
	// fmt.Println("現在の勇者の残気:", canKill)
}