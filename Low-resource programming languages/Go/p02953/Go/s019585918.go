package main
import "fmt"

func main(){
	var n int
	ans := true
	fmt.Scan(&n)
	var a []int = make([]int, n)
	for i:=0;i < n; i += 1 {
		fmt.Scan(&a[i]);
		if i != 0{
			if a[i-1] < a[i] {
				a[i] -= 1;
			} else if a[i-1] > a[i] {
				ans = false
			}
		}
	}
	if ans {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}
}
