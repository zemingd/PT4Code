package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

func nextInt() int{
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil{
		panic(e)
	}
	return i
}
var sc = bufio.NewScanner(os.Stdin)

func main(){
	var n, min, ans, num int
	ans = -1000000009
	n = nextInt()
	min = nextInt()
	for i:=1; i<n; i++{
		num = nextInt()
		if ans < num - min{
			ans = num - min
		}
		if min > num{
			min = num
		}
	}
	fmt.Println(ans)
}
