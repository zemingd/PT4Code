package main
import (
	"fmt"
)
func main() {
	var s int
	fmt.Scan(&s)
         // ↓ここを変える
	fmt.Print(s/3600,":",(s%3600)/60,":",(s%3600)%60,"\n")
}
