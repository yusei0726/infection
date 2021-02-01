class MypagesController < ApplicationController
  def index
  end

  def new
    @mypage = Mypage.new
  end
end
