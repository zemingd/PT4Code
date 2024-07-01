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
	var n,m int
	fmt.Scan(&n,&m)
	ans := 0
	for i:=0;i<=n;i+=1{
		for j:=0;j<=n;j+=1{
			x := m - i - j
          	//fmt.Println(ans)
			if x<=n && x>=0{
				ans += 1
			}
		}
	}
	fmt.Println(ans)
}