package main
import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d %d",&a,&b)

	add := a+b
	sub := a-b
	mul := a*b

	ans := add
	if add < sub {
		if sub < mul {
			ans = mul
		} else {
			ans = sub
		}
	} else {
		if add < mul {
			ans = mul
		}
	}
	
	fmt.Println(ans)
}
	