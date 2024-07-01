package main
import (
	"fmt"
	"math"
)
func main(){
	var n, m float64
	fmt.Scan(&n, &m)
	a:=make([]int, int(m))
	for i:=0;i<int(m);i++{
		fmt.Scan(&a[i])
	}
	temp:=math.Ceil((n-1)/(m-1))
	fmt.Println(temp)
}
