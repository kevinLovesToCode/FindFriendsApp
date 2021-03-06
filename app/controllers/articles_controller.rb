class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id]);
    end
    def index
        @articles = Article.all;
    end
    def new
    end
    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            flash[:notice] = "ARticle was createed"
        redirect_to @article
        else
            render 'error'
        end
    end
    def error
        
        render plain: @article.errors.full_message 
    end
    def edit
        @article = Article.find(params[:id])
    end
    def update
        @article = Article.find(params[:id]);
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice] = "Article was updated greatly"
            redirect_to @article
        else
            render 'edit'
        end
    end
  
end
