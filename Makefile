
# Makefile

hello: hello.o
	cc hello.o -o hello # Runs third

hello.o: hello.c
	cc -c hello.c -o hello.o # Runs second

# Typically hello.c would already exist, but I want to limit any additional required files
# hello.c:
#	echo "int main() { return 0; }" > hello.c # Runs first
