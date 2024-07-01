package main
import (
	"fmt"
)
func main(){
	var n, m, i, l, r int
	fmt.Scan(&n, &m)
	min:=0
	max:=100001
	for i=0;i<m;i++{
		fmt.Scan(&l, &r)
		if l>min{
			min=l
		}
		if r<max{
			max=r
		}
	}
	t:=max-min
	if t<0{
		fmt.Println(0)
	}else{
		fmt.Prinltn(max-min+1)
	}
}
