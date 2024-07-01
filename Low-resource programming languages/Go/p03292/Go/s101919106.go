package main
import (
	"fmt"
	"sort"
)
func main(){
	temp:=0
	a:=make([]int, 3)
	for i:=0;i<3;i++{
		fmt.Scan(&a[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	for i:=1;i<3;i++{
		temp+=a[i-1]-a[i]
	}
	fmt.Println(temp)
}
