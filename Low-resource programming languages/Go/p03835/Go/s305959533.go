package main
import "fmt"

func main(){
  k, s, an := 0, 0, 0
  fmt.Scanf("%d %d", &k, &s)
  for h := 0;h <= k;h++{
    for i := 0;i <= k;i++{
      if h + i <= s{
		for j := 0;j <= k;j++{
          if h + i + j == s{
            an++
          }else if h + i + j > s{
            break
          }   
  		}	  
      }else {
        break
      }
	}
  }
  fmt.Println(an)
}