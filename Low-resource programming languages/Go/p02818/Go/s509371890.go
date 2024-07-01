package main
 
import("fmt")
 
func main(){
  var a,b,k int
  fmt.Scanf("%d %d %d",&a,&b,&k)
  
  for i:=1; i<=k; i++{
    if a>0 {
      a -= 1
    }else if b>0{
      b -= 1
    }
  }
  fmt.Printf("%d %d",a,b)
}