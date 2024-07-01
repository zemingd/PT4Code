package main
import(
  "fmt"
)
func main(){
   var s, t, temp string
   var i int
   fmt.Scan(&s, &t)
   for i=0;i<len(s);i++{
     temp=string(s[0])
     s=s[1:]
     s+=temp
     if s==t{
       fmt.Println("Yes")
       return
     }
   }
   fmt.Println("No")
}
