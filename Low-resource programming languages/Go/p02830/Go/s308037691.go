package main
 
import("fmt")
 
func main(){
  var n int
  var a, b, ans string
  fmt.Scanf("%d",&n)
  fmt.Scanf("%s %s",&a, &b)

  arune := []rune(a)
  brune := []rune(b)
  
  for i:=0; i<n; i++ {
    ans += string(arune[i])+string(brune[i])
  }
  fmt.Printf("%s",ans)
}