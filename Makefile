GPP     := g++
INC     := -I./include/ -I./include/imgui/
BUILD   := ./build/
CFLAGS  := -Wall -Wextra
LIB_DIR := -L./libs/
LIBS    := -lGL -lm -lglfw3

IMGUI         := ./src/imgui.cpp
IMGUI_DEMO    := ./src/imgui_demo.cpp
IMGUI_DRAW    := ./src/imgui_draw.cpp
IMGUI_GLFW3   := ./src/imgui_impl_glfw.cpp
IMGUI_OPENGL3 := ./src/imgui_impl_opengl3.cpp
IMGUI_TABLES  := ./src/imgui_tables.cpp
IMGUI_WIDGETS := ./src/imgui_widgets.cpp
SHADERER      := ./src/shaderer.cpp

IMGUI_OBJ         := ./build/imgui.o
IMGUI_DEMO_OBJ    := ./build/imgui_demo.o
IMGUI_DRAW_OBJ    := ./build/imgui_draw.o
IMGUI_GLFW3_OBJ   := ./build/imgui_impl_glfw.o
IMGUI_OPENGL3_OBJ := ./build/imgui_impl_opengl3.o
IMGUI_TABLES_OBJ  := ./build/imgui_tables.o
IMGUI_WIDGETS_OBJ := ./build/imgui_widgets.o
SHADERER_OBJ      := ./build/shaderer.o
OBJS := $(IMGUI_OBJ)         \
        $(IMGUI_DEMO_OBJ)    \
        $(IMGUI_DRAW_OBJ)    \
        $(IMGUI_GLFW3_OBJ)   \
        $(IMGUI_OPENGL3_OBJ) \
        $(IMGUI_TABLES_OBJ)  \
        $(IMGUI_WIDGETS_OBJ) \
        $(SHADERER_OBJ)

EXE := ./build/Shaderer

all: $(OBJS)
	$(GPP) $(OBJS) $(INC) $(LIB_DIR) $(LIBS) -o $(EXE)

$(IMGUI_OBJ): $(IMGUI)
	$(GPP) -c $(SRC) $(INC) $(IMGUI) -o $(IMGUI_OBJ)

$(IMGUI_DEMO_OBJ): $(IMGUI_DEMO)
	$(GPP) -c $(SRC) $(INC) $(IMGUI_DEMO) -o $(IMGUI_DEMO_OBJ)

$(IMGUI_DRAW_OBJ): $(IMGUI_DRAW)
	$(GPP) -c $(SRC) $(INC) $(IMGUI_DRAW) -o $(IMGUI_DRAW_OBJ)

$(IMGUI_GLFW3_OBJ): $(IMGUI_GLFW3)
	$(GPP) -c $(SRC) $(INC) $(IMGUI_GLFW3) -o $(IMGUI_GLFW3_OBJ)

$(IMGUI_OPENGL3_OBJ): $(IMGUI_OPENGL3)
	$(GPP) -c $(SRC) $(INC) $(IMGUI_OPENGL3) -o $(IMGUI_OPENGL3_OBJ)

$(IMGUI_TABLES_OBJ): $(IMGUI_TABLES)
	$(GPP) -c $(SRC) $(INC) $(IMGUI_TABLES) -o $(IMGUI_TABLES_OBJ)

$(IMGUI_WIDGETS_OBJ): $(IMGUI_WIDGETS)
	$(GPP) -c $(SRC) $(INC) $(IMGUI_WIDGETS) -o $(IMGUI_WIDGETS_OBJ)

$(SHADERER_OBJ): $(SHADERER)
	$(GPP) -c $(SRC) $(INC) $(SHADERER) -o $(SHADERER_OBJ)

clean:
	rm $(wildcard ./build/*)