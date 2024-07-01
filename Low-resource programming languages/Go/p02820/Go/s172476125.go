package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//Score    : 各手の得点（連想配列）
var score map[string]int

func main() {
	//入力から N:（勝負数） K:（禁止手） v:（青木君のいるノード） をセット
	N := nextInt()
	K := nextInt()

	// K 回分の手を保存する
	Tk := make([]string, K+1)

	// R:グーの点 S:チョキの点 P:パーの点
	R := nextInt()
	S := nextInt()
	P := nextInt()

	// 得点
	score = make(map[string]int)
	score["r"] = R
	score["s"] = S
	score["p"] = P

	// T:マシンの手
	T := nextString()

	// じゃんけん開始
	// j:0～Kの間で循環し続ける変数⇒Tk[j]：K回前で出した手
	// myscore : 最前手で稼いだ得点
	// winte:勝ち手
	j := 0
	myscore := 0
	winte := ""
	for i := 0; i < N; i++ {
		j %= K
		winte = winTe(T[i : i+1])
		if winte == Tk[j] {
			Tk[j] = alterTe(K, T[i:])
		} else {
			Tk[j] = winte
			myscore += score[winte]
		}
		j++
	}
	fmt.Println(myscore)
}

// 替りの手を返す
// K手先の相手の手（勝ち手以外なら何でもいい）を返す
func alterTe(K int, nokori string) string {
	alterte := ""

	if len(nokori) >= K {
		alterte = nokori[K : K+1]
	}
	return alterte
}

// 勝ち手となる手を返す
func winTe(aite string) string {
	winte := ""
	switch aite {
	case "r":
		winte = "p"
	case "s":
		winte = "r"
	case "p":
		winte = "s"
	}

	return winte
}

// 以下、入力用
// 標準入力変数
var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}
