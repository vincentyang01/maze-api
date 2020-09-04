class MazesController < ApplicationController

    def index
        @mazes = Maze.all
    end

    def show
        @mazes = Maze.find(params[:id])
    end
end
