package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanInit()
	K := scanInt()
	sum := 0
	for i:= 1; i<=K; i++ {
		for j:=1; j<=K; j++ {
			c := gcd(i,j)
			for r:= 1; r<=K; r++{
				k := gcd(c,r)
				sum += k
			}
		}
	}
	fmt.Println(sum)
}
func gcd(a,b int) int {
	if b == 0 {
		return a
	}
	return gcd(b,a%b)
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
