class LikesController < ApplicationController
  before_action :find_pic
  def create
    puts "Raj"
    @pic.likes.create(user_id: current_user.id).save
    redirect_to pic_path(@pic)
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
    redirect_to pic_path(@pic)
  end
  private
  def likes_params
    puts "#{params} debug"
    params.require(:like).permit(:pic_id)
  end
  def find_pic
    puts "#{params[:like]} debug"
    @pic = Pic.find(params[:pic_id])
  end
end
