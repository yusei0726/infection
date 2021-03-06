class MypagesController < ApplicationController

  before_action :set_mypage, only: [:show, :edit, :update, :destroy]

  def index
    @mypages = Mypage.order('created_at DESC')
  end

  def new
    @mypage = Mypage.new
  end

  def create
    @mypage = Mypage.new(mypage_params)
    if @mypage.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @mypage.update(mypage_params)
      redirect_to mypage_path
    else
      render :edit
    end
  end

  def destroy
    if @mypage.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def mypage_params
    params.require(:mypage).permit(:username, :profile, :url, :category_id, :image).merge(influencer_id: current_influencer.id)
  end

  def set_mypage
    @mypage = Mypage.find(params[:id])
  end
end
