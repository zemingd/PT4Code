package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = nextInt()
	}
	return ints
}

func defeat(monsterNum, defeatingNum int) (remainingMonsterNum, defeatedNum int) {
	defeatedNum = defeatingNum
	if defeatedNum > monsterNum {
		defeatedNum = monsterNum
	}
	remainingMonsterNum = monsterNum - defeatedNum
	return
}

func count(as, bs []int) int {
	bs = append(bs, 0) // as にサイズを合わせる
	carry := 0
	defeatedAll := 0
	for i, v := range bs {
		monsterNum, defeatCount := defeat(as[i], carry)
		defeatedAll += defeatCount

		monsterNum, defeatCount = defeat(monsterNum, v)
		defeatedAll += defeatCount
		carry = v - defeatCount
	}
	return defeatedAll
}

func main() {
	n := nextInt()
	as := nextInts(n + 1)
	bs := nextInts(n)
	r := count(as, bs)
	fmt.Println(r)
}
