package main
import(
  "fmt"
)
func main(){
  var n, ans string
  fmt.Scan(&n)
  a:=len(n)
  for i:=0;i<a;i++{
    if n[i]=='0'{
      ans+="0"
    }else if n[i]=='1'{
      ans+="1"
    }else if len(ans)>0{
      ans=ans[0:i-1]
    }else{
      ans=""
    }
  }
  fmt.Println(ans)
}
