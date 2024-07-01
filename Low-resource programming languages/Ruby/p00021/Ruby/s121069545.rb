IO.popen('gcc -xc -ozzz - -lquadmath','w'){|io|
io.puts <<EOM
#include <stdio.h>
#include <quadmath.h>
char buf[99];
__float128 get(){
	scanf("%s",buf);
	return strtoflt128(buf,NULL);
}
int main(){
	int N;
	for(scanf("%d",&N);N--;){
		__float128 a=get(),b=get(),c=get(),d=get(),e=get(),f=get(),g=get(),h=get();
		puts((c-a)*(h-f)==(d-b)*(g-e)?"YES":"NO");
	}
	return 0;
}
EOM
}
IO.popen('./zzz','r+'){|io|
	io.write $<.read
	io.close_write
	puts io.read
}
File.unlink('zzz')