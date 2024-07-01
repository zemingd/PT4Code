package main

import (
	"fmt"
	"log"
	"math/rand"
)

const D = 365
const T = 26

const isTest = false

func main() {
	if !isTest {
		var d int
		var c [T]int
		var s [D][T]int
		fmt.Scanf("%d", &d)
		for i := 0; i < T; i++ {
			fmt.Scanf("%d", &c[i])
		}
		for i := 0; i < d; i++ {
			for j := 0; j < T; j++ {
				fmt.Scanf("%d", &s[i][j])
			}
		}

		ans := solve(d, c[:], s[:])
		for i := 0; i < d; i++ {
			fmt.Printf("%d\n", ans[i])
		}
	} else {
		maxscore := 0
		for p := 0; p < 50; p++ {
			c, s := makeproblem(D)
			ans := solve(D, c, s)
			sc := score(ans, D, c, s)
			fmt.Printf("score:%d\n", sc)
			fmt.Printf("ans:%+v\n", ans)
			fmt.Printf("c:%+v, s:%+v\n", c, s[0])
			if sc > maxscore {
				maxscore = sc
			}
			fmt.Printf("maxscore:%d\n", maxscore)
		}
	}
}

func makeproblem(d int) ([]int, [][T]int) {
	var c [T]int
	var s [D][T]int
	for i := 0; i < T; i++ {
		c[i] = rand.Intn(101)
	}
	for i := 0; i < d; i++ {
		for j := 0; j < T; j++ {
			s[i][j] = rand.Intn(20001)
		}
	}
	return c[:], s[:]
}

func solve(d int, c []int, s [][T]int) []int {
	//return random(d, c, s)
	return donyoku(d, c, s)
}

func random(d int, c []int, s [][T]int) []int {
	var ans [D]int
	for i := 0; i < d; i++ {
		ans[i] = rand.Intn(T)
	}
	return ans[:]
}

func donyoku(d int, c []int, s [][T]int) []int {
	var ans [D]int
	var sc int
	var max int
	var maxtype int
	for i := 0; i < d; i++ {
		max = -1
		maxtype = -1
		for j := 0; j < T; j++ {
			ans[i] = j
			sc = score(ans[:], i+1, c, s)
			if sc > max {
				max = sc
				maxtype = j
			}
		}
		if maxtype == -1 {
			log.Fatalf("ERROR i:%d max:%d", i, max)
		}
		ans[i] = maxtype
	}
	return ans[:]
}

func score(ans []int, d int, c []int, s [][T]int) int {
	var ret int
	var delta int
	var last [T]int
	for i := 0; i < d; i++ {
		last[ans[i]] = i + 1
		delta = s[i][ans[i]]
		for j := 0; j < T; j++ {
			delta -= c[j] * (i + 1 - last[j])
		}
		ret += delta
	}
	ret += 1000000
	if ret < 0 {
		return 0
	}
	//log.Printf("ret:%d", ret)
	return ret
}
