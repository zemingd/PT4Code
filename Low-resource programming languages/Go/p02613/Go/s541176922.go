package main
import(
  "fmt"
)
func main(){
  var i, n int
  var a, w, t, r int
  a,w,t,r=0,0,0,0
  fmt.Scan(&n)
  s:=make([]string, n)
  for i=0;i<n;i++{
    fmt.Scan(&s[i])
    if s[i]=="AC"{
      a++
    }else if s[i]=="WA"{
      w++
    }else if s[i]=="TLE"{
      t++
    }else{
      r++
    }
  }
  fmt.Println("AC x",a)
  fmt.Println("WA x",w)
  fmt.Println("TLE x",t)
  fmt.Println("RE x",r)
}
