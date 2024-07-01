package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	sc      = bufio.NewScanner(os.Stdin)
	mod int = 1e9 + 7
)

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	S := getString()
	K := getInt()

	oldS := []byte(S)
	newS := []byte(S)

	changeCnt := 0

	if len(newS) == 1 {
		changeCnt = K / 2
	} else {
		for i := 1; i < len(newS); i++ {
			if newS[i] == newS[i-1] {
				newS[i] = '*'
			}
		}

		if len(newS) >= 3 {
			if newS[1] == '*' && newS[0] != newS[2] {
				newS[1] = newS[0]
				newS[0] = '*'
			}
		}

		cnt := 0
		for i := 0; i < len(newS); i++ {
			if newS[i] == newS[0] || newS[i] == '*' {
				cnt++
			} else {
				break
			}
		}
		
		if cnt%2 == 0 {
			for i := 0; i < cnt/2; i++ {
				newS[2*i+1] = newS[2*i]
				newS[2*i] = '*'
			}
		}

		if newS[0] == newS[len(newS)-1] {
			newS[len(newS)-1] = '*'
		}

		for _, c := range newS {
			if c == '*' {
				changeCnt++
			}
		}

		changeCnt = changeCnt * K

		// 末尾2つが*なら、1回減らす
		if newS[len(newS)-2] == '*' && newS[len(newS)-1] == '*' {
			changeCnt--
		} else if newS[len(newS)-1] == '*' && oldS[len(oldS)-2] != oldS[len(oldS)-1] {
			changeCnt--
		}

		//fmt.Println(string(newS), string(newS))
	}

	fmt.Println(changeCnt)
}

func getInt() int {
	sc.Scan()
	str := sc.Text()
	value, _ := strconv.Atoi(str)
	return value
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}

func printIntArray(array []int) {
	strArray := fmt.Sprint(array)
	fmt.Println(strArray[1 : len(strArray)-1])
}

func calcMod(x int) int {
	return x % mod
}
