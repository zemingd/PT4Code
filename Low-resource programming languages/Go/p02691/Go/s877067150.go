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
	// numbers := map[int]int{}
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
	for j:=1; j<=n; j++{
		a_i := make(map[int]int)
		for i:= 1; i<j; i++ {
			a_i[a[i]+i] ++
		}
		if val,ok := a_i[j-a[j]]; ok{
			sum += val
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