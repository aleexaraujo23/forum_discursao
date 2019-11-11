class DiscussionsController < ApplicationController
  
  before_action :find_discussion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /discussions
  # GET /discussions.json
  def index
    @discussions = Discussion.all.order ("created_at DESC")
  end

  # GET /discussions/1
  # GET /discussions/1.json
  def show
      @discussion = Discussion.find(params[:id])
  end

  # GET /discussions/new
  def new
    @discussion = current_user.discussions.build
  end

  # GET /discussions/1/edit
  def edit
  end

  # POST /discussions
  # POST /discussions.json
  def create
    
    @discussion = current_user.discussions.build(discussion_params)

    respond_to do |format|
      if @discussion.save
        format.html { redirect_to @discussion, notice: "Post Criado com Sucesso." }
        format.json { render :show, status: :created, location: @discussion }
      else
        format.html { render :new, alert: "Não foi possível Salvar as informações." }
        format.json { render json: @discussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discussions/1
  # PATCH/PUT /discussions/1.json
  def update
    respond_to do |format|
      if @discussion.update(discussion_params)
        format.html { redirect_to @discussion, notice: "Post Alterado com Sucesso."}
        format.json { render :show, status: :ok, location: @discussion }
      else
        format.html { render :edit, alert: "Não foi possível Salvar as informações." }
        format.json { render json: @discussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discussions/1
  # DELETE /discussions/1.json
  def destroy
    @discussion.destroy
    respond_to do |format|
      format.html { redirect_to discussions_url, notice: 'Post Deletado com Sucesso' }
      format.json { head :no_content }
    end
  end

  private
    
    def find_discussion
     @discussion = Discussion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discussion_params
      params.require(:discussion).permit(:headline, :content, :user_id, :url_image)
    end
end
