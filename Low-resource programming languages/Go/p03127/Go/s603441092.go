package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func allAtoi(num []string) []int {
	conv := make([]int, len(num))
	for i, item := range num {
		conv[i], _ = strconv.Atoi(item)
	}
	return conv
}

func main() {
	// 最小値のモンスター体力で他のモンスターの体力を割った余りを出す
	// 1以上の体力のモンスターでこれを繰り返す
	nextLine()
	mons := allAtoi(strings.Split(nextLine(), " "))
	minimum := mons[0]
	minimumMon := 0
	for {
		aliveIdxList := []int{}
		for idx, hp := range mons {
			if hp > 0 {
				aliveIdxList = append(aliveIdxList, idx)
			}
			if hp < minimum && hp > 0 {
				minimum = hp
				minimumMon = idx
			}
		}
		if len(aliveIdxList) == 1 {
			fmt.Println(mons[aliveIdxList[0]])
			break
		}
		for _, idx := range aliveIdxList {
			if idx == minimumMon {
				continue
			}
			mons[idx] = mons[idx] % minimum
		}
	}
}
