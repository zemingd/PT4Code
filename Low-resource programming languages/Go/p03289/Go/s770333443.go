package main
import(
  "fmt"
)
func main(){
  var s string
  var i int
  fmt.Scan(&s)
  n:=len(s)
  flag:=0
  temp:=0
  for i=0;i<n;i++{
    if i==0{
      if s[i]=='A'{
        flag++
      }
    }else if i>=2 && i<=n-2{
      if s[i]=='C'{
        temp++
        flag++
      }else if s[i]>='a' && s[i]<='z'{
        flag++
      }
    }else if s[i]>='a' && s[i]<='z'{
      flag ++
    }
  }
  if flag==n && temp==1{
    fmt.Println("AC")
  }else{
    fmt.Println("WC")
  }
}
