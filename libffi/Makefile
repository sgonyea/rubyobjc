OBJS = src/types.o src/prep_cif.o src/x86/ffi_darwin.o src/x86/darwin.o src/powerpc/ffi_darwin.o src/powerpc/darwin.o src/powerpc/darwin_closure.o

LIB = libffi.a

CFLAGS = -I./include -DMACOSX -arch ppc -arch i386 -g

all: $(LIB)

$(LIB): $(OBJS) 
	ar -cq $(LIB) $(OBJS)
	ranlib $(LIB)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@ 

.S.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJS) $(LIB)
