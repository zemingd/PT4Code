package main
import "fmt"

func main() {
	var S = make([]string, 3)
	for s := range S {
		fmt.Scan(&S[s])
	}
	ans := 0
	for i:=0; i<3; i++ {
		if S[i] == 'R' {
			continue
			ans++
		}
		break
	}
	fmt.Println(ans)
}