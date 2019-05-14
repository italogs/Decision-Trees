all : dec-tree clean

CCC = g++-8
CCFLAGS = -O3 
LIBS= -lm
TARGETDIR=.
CPPFLAGS += \
        -I. \
		-std=c++11 \
		-Wunused

OBJS2 = \
		$(TARGETDIR)/main.o \
		$(TARGETDIR)/Params.o \
		$(TARGETDIR)/Greedy.o \
		$(TARGETDIR)/LocalSearch.o \

$(TARGETDIR)/dec-tree: $(OBJS2)
	$(CCC)  $(CCFLAGS) -o $(TARGETDIR)/dec-tree $(OBJS2)
	
$(TARGETDIR)/Params.o: Params.h Params.cpp
	$(CCC) $(CCFLAGS) $(CPPFLAGS) -c Params.cpp -o $(TARGETDIR)/Params.o

$(TARGETDIR)/Greedy.o: Greedy.h Greedy.cpp
	$(CCC) $(CCFLAGS) $(CPPFLAGS) -c Greedy.cpp -o $(TARGETDIR)/Greedy.o

$(TARGETDIR)/LocalSearch.o: LocalSearch.h LocalSearch.cpp
	$(CCC) $(CCFLAGS) $(CPPFLAGS) -c LocalSearch.cpp -o $(TARGETDIR)/LocalSearch.o
	
$(TARGETDIR)/main.o: main.cpp
	$(CCC) $(CCFLAGS) $(CPPFLAGS) -c main.cpp -o $(TARGETDIR)/main.o


clean:
	$(RM) \
	$(TARGETDIR)/main.o \
	$(TARGETDIR)/Params.o \
	$(TARGETDIR)/Greedy.o \
	$(TARGETDIR)/LocalSearch.o
