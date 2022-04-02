class ArticlesController < ApplicationController
    before_action :set_article, only: [:show , :edit, :update, :destroy]

    def home
    
    end

    def about
    end


    def show
        # @article = Article.find(params[:id])
    end

    def index
        @article = Article.all
    end

    def new
        @article = Article.new
    end

    def edit
        # @article = Article.find(params[:id])
    end



    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "article created succesfully"
            redirect_to article_path(@article) #it will redirect to show page or also we can write "redirect_to @article" both will work the same way
        else
            render :new, status: :unprocessable_entity
        end
    end


    def update
        # @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "article updated succesfully"
            redirect_to @article
        else
            render :edit , status: :unprocessable_entity
        end
    end

    def destroy
        # @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    private

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title,:description)
    end
end
