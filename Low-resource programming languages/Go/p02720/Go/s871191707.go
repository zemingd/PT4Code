package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scan_init()
	k := scanInt()
	//　るんるん数を作って納めて行く方法でいく
	// 00 ~ 99 まではるんるん数だと28通り
	// 0000 ~ 9999 まではるんるん数だと　28*28通り
	queue := []int{1,2,3,4,5,6,7,8,9}
	index := 0
	for len(queue) > 0 {
		index++
		take := queue[0]
		queue = queue[1:]
		if index == k {
			fmt.Println(take)
			break
		}
		for i:= -1; i<=1; i++ {
			d := take%10 + i
			if (d<0 || d>9) {
				continue
			}
			pushval := take*10 + d
			queue = append(queue,pushval)
		}
	}
}
var sc = bufio.NewScanner(os.Stdin)
func scan_init () {
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