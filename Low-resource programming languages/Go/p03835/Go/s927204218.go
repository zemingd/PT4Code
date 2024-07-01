package main
import "fmt"
func main(){
  s, k, an := 0, 0, 0
  fmt.Scanf("%d %d", &k, &s)
  for i:=0;i<=k;i++{
    for j:=0;j<=k;j++{
      if 0 <= (s-i-j) && (s-i-j) <= k{
        an++
      }
    }
  }
  fmt.Println(an)
}