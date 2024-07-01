package main

import  (
    "fmt"
)
func main() {
    var h,a,i int;
    fmt.Scan(&h,&a);
   for {
       h -= a;
       i++;
       if(h < 0) {
        h += a;
        break;
       }
   }
   fmt.Println(i);
}