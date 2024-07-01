package main

import  (
    "fmt"
)
func main() {
   var a,h,i int 0,0,0
   fmt.Scanf("%d %d",&a,&h)

   for() {
       h -= a;
       i++;
       if(h <= 0) {
        h += a;
        break;
       }
   }
   fmt.Println(i)
}