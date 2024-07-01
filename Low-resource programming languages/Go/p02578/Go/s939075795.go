package main

import (
	"bufio"
	f "fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		f.Println(err)
	}
	return a
}

func scanSlice(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	var n int
	f.Scan(&n)
	arr := scanSlice(n)

	ans := ans(n, arr)

	f.Println(ans)
}

func max(nums []int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func ans(n int, arr []int) int {
	maxInt := arr[0]
	diff := 0
	cnt := 0
	for i := 1; i < n; i++ {
		///f.Printf("いまから%vを比較します\n", arr[i])
		if maxInt > arr[i] {
			diff = maxInt - arr[i]
			arr[i] += diff
			cnt += diff
		} else {
			maxInt = arr[i]
		}
		//f.Printf("追加した段数の合計は現在%v\n", cnt)
	}

	//f.Printf("差分の合計は:%v\n", cnt)
	return cnt
}
