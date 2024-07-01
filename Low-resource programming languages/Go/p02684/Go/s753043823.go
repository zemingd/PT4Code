package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	// initialize
	tmp := strings.Split(readLine(), " ")
	nk := mapInt(tmp)
	N, K := nk[0], nk[1]

	towns := make(map[int]int)
	tmp = strings.Split(readLine(), " ")
	inputTown := mapInt(tmp)
	for i, e := range inputTown {
		towns[i + 1] = e
	}

	// ループの開始カウントと終了カウントを見つける
	startCnt := -1
	endCnt := -1
	checkMap := make(map[int]int)
	cur := 1
	checkMap[cur] = 0
	var tmpList []int
	for cnt := 0 ; cnt < N; cnt++ {
		next := towns[cur]
		tmpList = append(tmpList, cur)
		if val, ok := checkMap[next]; ok {
			startCnt = val
			endCnt = cnt + 1
			break
		}
		checkMap[cur] = cnt
		cur = next
	}

	// 仮に1つの町でずっとループし続けるなら、町1で確定となる
	if len(tmpList) < 1 {
		fmt.Print(1)
		return
	}

	loopCnt := endCnt - startCnt
	beforeList := tmpList[:startCnt]
	loopList := tmpList[startCnt:]

	// ループに入る以前で終わる
	if K < startCnt {
		fmt.Print(beforeList[K])
		return
	}

	// 通常
	amari := (K - startCnt) % loopCnt
	fmt.Print(loopList[amari])
}

var sc = bufio.NewScanner(os.Stdin)
func readLine() string {
	sc.Scan()
	return sc.Text()
}

func mapInt(input []string) []int {
	r := make([]int, len(input))
	for i, e := range input {
		r[i], _ = strconv.Atoi(e)
	}
	return r
}
