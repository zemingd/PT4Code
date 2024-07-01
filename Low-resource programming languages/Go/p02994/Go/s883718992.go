package main
import "fmt"

func main() {
	var n,l int
	ans := 0
	fmt.Scan(&n,&l)
	x:=(n+l-1) * l
	if x <= 0 {
		for i:=l;i<=(n+l-1);i+=1 {
			ans += i;
		}
	} else {
		if l>0 {
			for i:=l+1;i<=(n+l-1);i+=1 {
				ans += i;
			}
		} else {
			for i:=l;i<=(n+l-2);i+=1 {
				ans += i;
			}
		}
	}
	fmt.Println(ans)

}