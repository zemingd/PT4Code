package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func toInt(s string) int {
	i, e := strconv.Atoi(s)
	if e != nil {
		panic("it's NOT a number!!!")
	}
	return i
}

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n)
	
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i] = toInt(sc.Text())
		b[i] = toInt(strconv.FormatInt(int64(a[i]), 2))
		c[i] = len(strconv.Itoa(b[i]))
	}
	
	fmt.Println(b)
	fmt.Println(c)
	
	ans := 0
	for i := 0; i < maximum(c, 0); i++ {
		m := 0
		for _, t := range b {
			m += (t / int(math.Pow(10, float64(i)))) % 10
		}
		
		ans += int(math.Pow(2, float64(i))) * m * (n - m)
	}
	
	fmt.Println(ans%1000000007)
}

func maximum(nums []int, acc int) int {
	if len(nums) == 0 {
		return acc
	} else {
		a := nums[0]
		if a > acc {
			return maximum(nums[1:], a)
		} else {
			return maximum(nums[1:], acc)
		}
	}
}
