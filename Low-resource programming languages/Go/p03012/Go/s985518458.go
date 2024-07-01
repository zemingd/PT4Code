package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	return sc.Text()
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

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func main() {
	n := nextInt()
	w := make([]int,n)
	for i:=0;i<n;i++{
		w[i]= nextInt()
	}

	min:=100

	for i:=0;i<n;i++{
		//first
		f:=0
		l:=0
		for _,v := range w[0:i]{
			f+=v
		}
		for _,v := range w[i:n]{
			l+=v
		}
		if min > abs(f-l){
			min = abs(f-l)
		}
	}

	fmt.Printf("%d\n",min)
}
