# Linux (default)
EXE = gravity
#LDFLAGS = -lGL -lGLU -lglut
LDFLAGS = -framework GLUT -framework OpenGL -framework Cocoa

# Windows (cygwin)
ifeq "$(OS)" "Windows_NT"
	EXE = assignment1.exe
	LDFLAGS = -lopengl32 -lglu32 -lglut32
endif

# OS X
ifeq "$(OSTYPE)" "darwin"
LDFLAGS = -framework GLUT -framework OpenGL -framework Cocoa
endif

$(EXE) : gravity.cc
	g++ -Wno-deprecated-declarations -o $@ $< $(CFLAGS) $(LDFLAGS)
