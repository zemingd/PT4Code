package main
import . "fmt"
// github.com/EndlessCheng/codeforces-go
func main() {
n:=0
Scan(&n)
Print(map[bool]string{true:"Yes",false:"No"}[n>=30])
}