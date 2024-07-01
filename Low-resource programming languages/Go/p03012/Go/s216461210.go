package main
import "fmt"

func min(a int,b int) int{
	if a>b{
		return b
	} else {
		return a
	}
}
func zet(a int) int{
	if a<0 {
		return a*(-1)
	} else{
		return a
	}
}

func main() {
	var n,tmp int
	fmt.Scan(&n)
	a := []int{}
	tot := 0
	for i:=0;i<n;i+=1{
		fmt.Scan(&tmp)
		tot += tmp
		a = append(a,tmp)
	}
	ans := 1000000007
	tot_a :=0
	for i:=0;i<n;i+=1 {
		tot_a += a[i]
		tot -= a[i]
		ans = min(ans,zet(tot-tot_a))
	}
	fmt.Println(ans)
}