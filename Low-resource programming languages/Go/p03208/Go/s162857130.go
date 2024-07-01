package main
import (
	"fmt"
	"sort"
)
func main() {
	var i, n, k, temp int
	fmt.Scan(&n, &k)
	a:=make([]int, n)
	for i=0;i<n;i++{
		fmt.Scan(&a[i])
	}
	ans:=1000000001
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	for i=0;i<n-k+1;i++{
		temp=a[i]-a[i+k-1]
		if temp<ans{
			ans=temp
		}
	}
	fmt.Println(ans)
}
