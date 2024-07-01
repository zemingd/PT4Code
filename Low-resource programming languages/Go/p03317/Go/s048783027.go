package main
import (
	"fmt"
	"math"
)
func main(){
	var n, m float64
	fmt.Scan(&n, &m)
	var s int
	s=int(m)
	a:=make([]int, s)
	for i:=0;i<s;i++{
		fmt.Scan(&a[i])
	}
	temp:=math.Ceil((n-1)/(m-1))
	fmt.Println(temp)
}
