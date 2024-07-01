package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanInit()
	n := scanInt()
	a := make([]int,n+1) // 0はつかわないようにする
	numbers := map[int]int{}
	for i:=1; i<=n; i++ {
		number := scanInt()
		a[i] = number
		//if _,ok := numbers[number]; !ok {
		//	numbers[number] = 0
		//}
		// numbers[number] += 1
	}
	// fmt.Println(numbers)
	sum := 0
	// j-Aj = Ai+i
	for j:= 1; j<=n; j++ {
		memo := map[int]int{}
		for i:=1; i<j; i++ {
			memo[i] = a[i] + i
		}
		for _,value := range memo {
			if j-a[j] == value {
				sum += 1
			}
		}
	}
	fmt.Println(sum)

}
var sc = bufio.NewScanner(os.Stdin)
func scanInit () {
	sc.Split(bufio.ScanWords)
}
func scanInt () int{
sc.Scan()
	i,_ := strconv.Atoi(sc.Text())
	return i
}
//func scan () string{
//  sc.Scan()
//	return sc.Text()
//}