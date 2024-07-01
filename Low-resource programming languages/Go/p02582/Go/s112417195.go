package main
import "fmt"

func main() {
	var S = make([]string, 3)
	fmt.Scan(&S)
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