package main

import(
	"bufio"
	"os"
	"fmt"
	"math"
)

var sc = bufio.NewScanner(os.Stdin)

// 文字列入力
func nextLine() string {
	if sc.Scan() {
		return sc.Text()
	}
	return ""
}

// 文字列の中で、使われたアルファベットをtrueにする
func alphabetChecker(s string) [26]bool {
	var b [26]bool
	var N = len(s)
	for i := 0; i < N; i++ {
		// Asciiコードでチェック
		b[s[i] - 97] = true // alphabet to Ascii
	}
	return b
}

// 課題
func notFound(s string) string {
	N := len(s)
	if N < 1 && float64(N) > math.Pow(10, 10) {
		return ""
	}
	b := alphabetChecker(s)

	// 最初にfalseのアルファベットを返す
	for i := 0; i < 26; i++ {
		if b[i] == false {
			return string(i + 97) // Ascii to alphabet
		}
	}
	return "None"
}

func main() {
	var x string
	x = nextLine()
	fmt.Println(notFound(x))
}