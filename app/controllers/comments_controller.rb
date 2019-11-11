class CommentsController < ApplicationController
    
      before_action :authenticate_user!, except: [:index, :show]
    
    def create
      @discussion = Discussion.find(params[:discussion_id])
      @comment = @discussion.comments.create(params[:comment].permit(:comment, :url_image))

      @comment.user_id = current_user.id if current_user
      @comment.save
      
      if @comment.save
        redirect_to discussion_path(@discussion)
      else
       render 'new'
      end
    end
    
    def destroy
      @discussion = Discussion.find(params[:discussion_id])
      @comment = @discussion.comments.find(params[:id])
      
      @comment.destroy
      redirect_to discussion_path(@discussion)
    end
    
    
    def edit
      @discussion = Discussion.find(params[:discussion_id])
      @comment = @discussion.comments.find(params[:id])
    end
    
    def update
      @discussion = Discussion.find(params[:discussion_id])
      @comment = @discussion.comments.find(params[:id])
      
      if @comment.update(params[:comment].permit(:comment, :url_image))
         redirect_to discussion_path(@discussion)
      else
       render 'edit'
      end
    end
    
end
