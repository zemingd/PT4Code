package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	d := nextInt()
	clist := make([]int, 26)
	for i := 0; i < 26; i++ {
		clist[i] = nextInt()
	}
	var slist [366][26]int
	for i := 0; i < d; i++ {
		for j := 0; j < 26; j++ {
			tmp := nextInt()
			//fmt.Println(tmp)
			slist[i][j] = tmp
		}
	}

	tlist := make([]int, d) // Answer
	last := map[int]int{}
	vlist := make([]int, d)

	// 貪欲法
	for i := 0; i < d; i++ {
		bestc := 0
		bestm := 0

		// 26タイプ全て実施
		for todaytype := 0; todaytype < 26; todaytype++ {
			lastbak := last[todaytype]
			last[todaytype] = i + 1

			// 基礎満足度増加計算
			basem := 0
			if i == 0 {
				basem = slist[i][todaytype]
			} else {
				basem = vlist[i-1] + slist[i][todaytype]
			}

			// 満足度低下計算
			teika := 0
			for j := 0; j < 26; j++ {
				teika += clist[j] * (i + 1 - last[j])
			}

			// チャンピオン計算
			basem -= teika
			if bestm < basem {
				//fmt.Printf("Camp Changed: %d at type%d\n", basem, todaytype)
				bestm = basem
				bestc = todaytype
			}

			// 初期化
			last[todaytype] = lastbak
		}

		vlist[i] += bestm
		last[bestc] = i + 1

		tlist[i] = bestc
		//fmt.Printf("--- Day End bestm,bestc = %d,%d\n", bestm, bestc)
	}

	// 出力
	for i := 0; i < d; i++ {
		fmt.Printf("%d\n", tlist[i]+1)
	}

}

// ---- readfunc
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
